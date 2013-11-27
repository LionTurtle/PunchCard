//
// Application.cpp
//
// Created by Mark Peng on 11/25/13
//

#include "Application.h"

const int WIDTH = 800;
const int HEIGHT = 500;
const int MENU_BAR_HEIGHT = 25;
const int WINDOW_MARGIN = 10;
const int TOTAL_SECONDS = 24 * 60 * 60;

Application::Application(int argc, char* argv[]) :
        QApplication(argc, argv),
        _window(new QMainWindow(desktop())),
        _punched(false),
        _totalIn(0),
        _totalOut(0),
        _alarm(0),
        _goalSet(false)
{
	int screeenWidth, screenHeight;

	int x, y;

	QDesktopWidget *desktop = QApplication::desktop();

	screeenWidth = desktop->width();
	screenHeight = desktop->height();

	x = (screeenWidth - WIDTH) / 2;
	y = (screenHeight - HEIGHT) / 2;

	_window->setFixedSize(WIDTH, HEIGHT);
	_window->move(x, y);
	_window->setWindowTitle("PunchCard");
	_window->show();

	initMenu();
	initCenter();
	
	initCurrTime();
	initPunchButton();
	showDayLog();
}

void Application::initMenu() {
	QMenuBar *menuBar = new QMenuBar();
	_window->setMenuBar(menuBar);

	QMenu *fileMenu = menuBar->addMenu("File");
	QAction *quitAction = fileMenu->addAction("Quit", this, SLOT(quit()), Qt::CTRL | Qt::Key_Q);
    quitAction->setMenuRole(QAction::QuitRole);

    QMenu *viewMenu = menuBar->addMenu("View");
    QAction *viewLogAction = viewMenu->addAction("View Log", this, SLOT(viewLog()), Qt::Key_Tab);
}

void Application::viewLog() {
	QDialog *logWindow = new QDialog();
	logWindow->setWindowTitle("Log");
	logWindow->setFixedSize(300, 300);

	QLabel *lengthOfDayLabel = new QLabel(logWindow);
	QString lODString = "Total Length of Day: ";
	int lODInSeconds = TOTAL_SECONDS + 60 * 60 - calculateSeconds(_dayStartTime);
	lODString.append(secondsToQTime(lODInSeconds).toString("hh:mm:ss"));
	lengthOfDayLabel->setText(lODString);

	QLabel *totalInLabel = new QLabel(logWindow);
	QString totalInString = "Total Time Punched-In: ";
	totalInString.append(secondsToQTime(_totalIn).toString("hh:mm:ss"));
	totalInLabel->setText(totalInString);

	QLabel *totalOutLabel = new QLabel(logWindow);
	QString totalOutString = "Total Time Punched-Out: ";
	totalOutString.append(secondsToQTime(_totalOut).toString("hh:mm:ss"));
	totalOutLabel->setText(totalOutString);

	QLabel *percentDayInLabel = new QLabel(logWindow);
	QString percentInString = "Percentage of Time Punched-In: ";
	int dayElapsed = _totalIn + _totalOut;
	float percentIn = (float(_totalIn) / dayElapsed) * 100;
	percentInString.append(QString::number(percentIn, 'f', 2) + '%');
	percentDayInLabel->setText(percentInString);

	QLabel *percentDayOutLabel = new QLabel(logWindow);
	QString percentOutString = "Percentage of Time Punched-Out: ";
	float percentOut = 100 - percentIn;
	percentOutString.append(QString::number(percentOut, 'f', 2) + '%');
	percentDayOutLabel->setText(percentOutString);

	QVBoxLayout *layout = new QVBoxLayout();
	layout->addWidget(lengthOfDayLabel);
	layout->addWidget(totalInLabel);
	layout->addWidget(totalOutLabel);
	layout->addWidget(percentDayInLabel);
	layout->addWidget(percentDayOutLabel);
	logWindow->setLayout(layout);
	logWindow->show();
}

void Application::initCenter() {
	_center = new QWidget(_window);
	_window->setCentralWidget(_center);
}

void Application::initCurrTime() {
	QTimer *timer = new QTimer(this);
	connect(timer, SIGNAL(timeout()), this, SLOT(update()));
	timer->start(1000);

	QTime time = QTime::currentTime();
	_dayStartTime = time;
	_prevPunchTime = time;
	int secondsRemaining = TOTAL_SECONDS - calculateSeconds(time) + 60 * 60;
	time = secondsToQTime(secondsRemaining);
	QString timeText = time.toString("CURRENT TIME -- hh:mm:ss");
	
	_currTime = new QLabel(_center);
	_currTime->setText(timeText);
	_currTime->setFont(QFont("Garamond", 36));
	QFontMetrics metrics(_currTime->font());
	_currTime->move((WIDTH - metrics.width(_currTime->text())) / 2, 0);
}

void Application::update() {
	updateTime();
	if (_punched) {
		_alarm++;
		if (_goalSet)
			updateGoalTime();
		if (_alarm == (60 * 60)) {
			_alarm = 0;
			QMessageBox alarmMsg;
			alarmMsg.setText("RELOAD YOURSELF.");
			alarmMsg.setIcon(QMessageBox::Warning);
			QTime alarmStart = QTime::currentTime();
			alarmMsg.exec();
			QTime alarmEnd = QTime::currentTime();
			int reloadTime = calculateSeconds(alarmEnd) - calculateSeconds(alarmStart);
			_totalOut += reloadTime;
			_totalIn -= reloadTime;
		}
	}
}

void Application::updateTime() {
	QTime time = QTime::currentTime();
	int secondsRemaining = TOTAL_SECONDS - calculateSeconds(time) + 60 * 60;
	time = secondsToQTime(secondsRemaining);
	QString timeText = time.toString("CURRENT TIME -- hh:mm:ss");
	_currTime->setText(timeText);
}

void Application::initPunchButton() {
	_punchButton = new QPushButton("Punch In", _center);
	_punchButton->setFixedSize(WIDTH / 4, HEIGHT / 4);
	_punchButton->move((WIDTH - _punchButton->width()) / 2, 
		(HEIGHT - _punchButton->height() - MENU_BAR_HEIGHT) / 2);

	connect(_punchButton, SIGNAL(clicked()), this, SLOT(onPunch()));
}

void Application::onPunch() {
	QTime punchTime = QTime::currentTime();
	if (!_punched) {
		_punched = true;
		setGoal();
		_goalTime->show();
		_goalSet = true;
		_totalOut += calculateSeconds(punchTime) - calculateSeconds(_prevPunchTime);
	} else {
		_punched = false;
		_goalTime->hide();
		_goalSet = false;
		_totalIn += calculateSeconds(punchTime) - calculateSeconds(_prevPunchTime);
		_alarm = 0;
	}
	_prevPunchTime = punchTime;
	updatePunchButton();
}

void Application::setGoal() {
	QMessageBox *goalMsg = new QMessageBox();
	goalMsg->setWindowTitle("Goal?");
	QSpinBox *spinBox = new QSpinBox(goalMsg);
	spinBox->setMaximum(5);
	spinBox->setMinimum(1);
	spinBox->move(5, 5);
	goalMsg->exec();

	int goalValue = spinBox->value();
	QTime time = QTime::currentTime();
	_goal = secondsToQTime(goalValue * 60 * 60 + calculateSeconds(time));
	int secondsRemaining = goalValue * 60 * 60;
	QString timeText = "TIME TILL GOAL -- ";
	timeText.append(secondsToQTime(secondsRemaining).toString("hh:mm:ss"));

	_goalTime = new QLabel(_center);
	_goalTime->setText(timeText);
	_goalTime->setFont(QFont("Garamond", 24));
	QFontMetrics metrics(_goalTime->font());
	_goalTime->move((WIDTH - metrics.width(_goalTime->text())) / 2, (HEIGHT - metrics.height() - MENU_BAR_HEIGHT) / 2);
}

void Application::updateGoalTime() {
	QTime time = QTime::currentTime();
	int goalSeconds = calculateSeconds(_goal);
	int currSeconds = calculateSeconds(time);
	int secondsRemaining;
	if (goalSeconds < currSeconds) {
		secondsRemaining = goalSeconds + TOTAL_SECONDS - currSeconds;
	} else {
		secondsRemaining = goalSeconds - currSeconds;
	}
	time = secondsToQTime(secondsRemaining);
	QString timeText = "TIME TILL GOAL -- ";
	timeText.append(secondsToQTime(secondsRemaining).toString("hh:mm:ss"));
	_goalTime->setText(timeText);
}

void Application::updatePunchButton() {
	if (_punched) {
		_punchButton->setText("Punch Out");
		_punchButton->setFixedSize(WIDTH / 10, HEIGHT / 20);
		_punchButton->move(WIDTH - _punchButton->width() - WINDOW_MARGIN, 
			HEIGHT - _punchButton->height() - MENU_BAR_HEIGHT - WINDOW_MARGIN);
	} else {
		_punchButton->setText("Punch In");
		_punchButton->setFixedSize(WIDTH / 4, HEIGHT / 4);
		_punchButton->move((WIDTH - _punchButton->width()) / 2, 
			(HEIGHT - _punchButton->height() - MENU_BAR_HEIGHT) / 2);
	}
}

int Application::calculateSeconds(QTime time) {
	int seconds = time.second();
	seconds += time.minute() * 60;
	seconds += time.hour() * 60 * 60;
	return seconds;
}

QTime Application::secondsToQTime(int seconds) {
	seconds = seconds % TOTAL_SECONDS;
	int hours = seconds / (60 * 60);
	seconds -= 60 * 60 * hours;
	int minutes = seconds / 60;
	seconds -= 60 * minutes;
	QTime calculated = QTime(hours, minutes, seconds, 0);
	return calculated;
}

void Application::showDayLog() {
	QLabel *dailyTimes = new QLabel(_center);
	dailyTimes->setText("Day started at: " + _dayStartTime.toString("hh:mm") + "\tDay ends at: 01:00");
	dailyTimes->setFont(QFont("Garamond", 12));
	QFontMetrics metrics(dailyTimes->font());
	dailyTimes->move(WINDOW_MARGIN, HEIGHT - metrics.height() - MENU_BAR_HEIGHT - WINDOW_MARGIN);
}