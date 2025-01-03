class ApiEndpoints {
  // TEST CONNECT
  static const String testConnectAPI = '/tasks/testconnect';

  // AUTH
  static const String login = '/auth/login';

  // TASK
  static const String getTasks = '/tasks';
  static const String getNextTask = '/tasks/next-task';

  // LOG
  static const String dailyFoodUsageLog = '/dailyfoodusagelog';
  static const String healthLog = '/healthlog';
  static const String vaccineScheduleLog = '/vaccineschedulelog';

  // CAGE
  static const String getCages = '/cages';

  // SYMPTOM
  static const String postSymptom = '/medicalsymptom';
  static const String getSymptoms = '/medicalsymptom';

  // USER
  static const String getUsers = '/users';
  static const String postUser = '/users';

  // GROWTHSTAGE
  static const String growthStage = '/growthstage';
  static const String growthStageInCage = '$growthStage/cage';
}
