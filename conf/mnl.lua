--hs server config

--是否守护进程运行
is_daemon = 0

--运行线程数(CPU数)
thread_num = 2

--log config
--log_level output specified level of log to logfile
--[[
LOG_FATAL 0     System is unusable
LOG_ALERT 1     Action must be taken immediately
LOG_CRIT 2      Critical conditions
LOG_ERROR 3     Error conditions
LOG_WARNING 4   Warning conditions
LOG_NOTICE 5    Normal, but significant
LOG_INFO 6      Information
LOG_DEBUG 7     DEBUG message
]]
--输出log级别
log_level = 7

--输出log路径
log_path = pwd .. '/hs.log'
