# Win10DisableUpdates
Disable Windows 10 update services + delete scheduled tasks to restart them.

## Create scheduled task

Only describing non default settings.

`Task Scheduler > right click Task Scheduler Library > Create Task…`

`Name: DisableUpdates`

### Security options

`When running the task, use the following user account: System`

- [x] `Run with highest privileges`

### Triggers

Better safe than sorry.

`Every day at 06:00, every 5 minutes, indefinitely`

### Actions

The path might need to be adapted.

`Start program: %USERPROFILE%\DisableUpdates.bat`

### Settings

- [x] `Run task as soon as possible after a scheduled start is missed`
