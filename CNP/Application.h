//
// Application.h
//
// Created by Mark Peng on 11/25/13
//

#ifndef __PunchCard__Application__
#define __PunchCard__Application__

#include <Qt>
#include <QApplication>
#include <QDesktopWidget>
#include <QWidget>
#include <QMenuBar>
#include <QMainWindow>
#include <QPushButton>
#include <QFrame>
#include <QTime>
#include <QTimer>
#include <QLabel>
#include <QFont>
#include <QFontMetrics>
#include <QMessageBox>
#include <QSpinBox>
#include <QDialog>
#include <QVBoxLayout>

class Application : public QApplication {
	Q_OBJECT

public:
	Application(int argc, char *argv[]);
	~Application() {};

public slots:
	void viewLog();

private slots:
	void update();
	void onPunch();

private:
	void initMenu();
	void initCenter();

	void initCurrTime();
	void updateTime();

	void initPunchButton();
	void setGoal();
	void updateGoalTime();
	void updateCenter();
	void updatePunchButton();

	void showDayLog();

	int calculateSeconds(QTime time);
	QTime secondsToQTime(int seconds);

	QMainWindow *_window;
	QWidget *_center;

	QPushButton *_punchButton;
	bool _punched;

	QLabel *_currTime;

	QTime _dayStartTime;

	int _totalIn; // in seconds
	int _totalOut; // in seconds

	int _alarm;

	bool _goalSet;
	QTime _goal;
	QLabel *_goalTime;

	QTime _prevPunchTime;

};

#endif /* defined(__PunchCard__Application__) */