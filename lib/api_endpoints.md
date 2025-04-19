# Staff Farm using Endpoints:
## Animal Sale
(post) - /api/animalsale
(get) - /api/animalsale/{taskId}

## Auth
(post) - /api/auth/logout
(get) - /api/auth/me
(post) - /api/auth/refresh

## DailyFoodUsageLog (all)

## FarmingBatch
(get) - /api/farmingbatchs/cage/{cageId}/{dueDateTask}
(post) - /api/farmingbatchs/{farmingBatchId}/growth-stages/{growthStageId}/dead-animals

## GrowthStage
(get) - /api/growthstage/cage/{cageId}/active-growth-stage
(put) - /api/growthstage/growth-stage/update-weight
(get) - /api/growthstage/growth-stage/{growthStageId}/sales

## HealthLog
(post) - /api/healthlog/{prescriptionId}/health-log
(get) - /api/healthlog/task/{taskId}

## MedicalSymptom
(post) - /api/medicalsymptom
(get) - /api/medicalsymptom/{id}
(get) - /api/medicalsymptom/by-staff-and-batch

## Notification
(get) - /api/notification/{userId}
(put) - /api/notification/{notificationId}/mark-read
(put) - /api/noitification/{userId}/mark-all-read
(delete) - /api/notification/{notificationId}

## Prescription
(get) - /api/prescription/{id}/prescription
(put) - /api/prescription/{prescriptionId}/status
(get) - /api/prescription/{prescriptionId}/is-last-session

## SaleType (all)

## Symptom
(get) - /api/symptom

## Task
(get) - /api/tasks
(put) - /api/tasks/{taskId}/status/{status}
(get) - /api/tasks/next-task
(get) - /api/tasks/{taskId}
(put) - /api/tasks/{taskId}/set-treatment

## User
(get) - /api/users/{userId}/cages
(get) - /api/users/server-time
(put) - /api/users/{userId}/device

## Vaccine
(get) - /api/vaccine/{id}

## VaccineSchedule
(get) - /api/vaccineschedule/vaccine-schedules
(get) - /api/vaccineschedule/{id}

## VaccineScheduleLog
(post) - /api/vaccineschedulelog/vaccine-log/create
(Get) - /api/vaccineschedulelog/task/{taskId}





# Customer using Endpoints:
## Auth
(post) - /api/auth/logout
(get) - /api/auth/me

## FarmingBatch
(get) - /api/farmingbatchs/customer/{userId}
(get) - /api/farmingbatchs/{farmingBatchId}
(get) - /api/farmingbatchs/{farmingBatchId}/detailed-report