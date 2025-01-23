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

  // MEDICAL SYMPTOM
  static const String postSymptom = '/medicalsymptom';
  static const String getSymptoms = '/medicalsymptom';
  static const String getMedicalSymptomsByBatch =
      '$getSymptoms/by-staff-and-batch';

  // USER
  static const String getUsers = '/users';
  static const String postUser = '/users';
  static const String getServerTime = '/users/server-time';

  // GROWTHSTAGE
  static const String growthStage = '/growthstage';
  static const String growthStageInCage = '$growthStage/cage';

  // FARMING-BATCH
  static const String farmingBatch = '/farmingbatchs';
  static const String farmingBatchByCage = '$farmingBatch/cage';

  // SYMPTOM
  static const String symptom = '/symptom';

  // PRESCRIPTION
  static const String prescription = '/prescription';
}
