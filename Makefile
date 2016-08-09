#########define
CC = gcc
#CFLAGS = -Wall -g -O2
CFLAGS = -Wall
INCLUDES = -I/usr/local/include/evhtp
LIBS = -levent -levent_openssl -levent_pthreads -lssl -lcrypto -levhtp -lpthread -lm -llua

all: objs/hs
.PHONY: all

#########
objs/hs: objs/hs.o \
		objs/hs_net.o \
		objs/hs_log.o \
		objs/hs_mac.o \
		objs/hs_hex.o \
		objs/hs_iconv.o \
		objs/hs_string.o \
		objs/hs_utils.o \
		objs/hs_slock.o \
		objs/cJSON.o

	$(CC) -o objs/hs \
		objs/hs.o \
		objs/hs_net.o \
		objs/hs_log.o \
		objs/hs_mac.o \
		objs/hs_hex.o \
		objs/hs_iconv.o \
		objs/hs_string.o \
		objs/hs_utils.o \
		objs/hs_slock.o \
		objs/cJSON.o \
		$(LIBS)

##########
#  core  #
##########
objs/hs.o: src/hs.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs.o \
		src/hs.c

objs/hs_net.o: src/hs_net.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_net.o \
		src/hs_net.c

objs/hs_log.o: src/hs_log.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_log.o \
		src/hs_log.c

objs/hs_mac.o: src/hs_mac.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_mac.o \
		src/hs_mac.c

objs/hs_hex.o: src/hs_hex.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_hex.o \
		src/hs_hex.c

objs/hs_iconv.o: src/hs_iconv.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_iconv.o \
		src/hs_iconv.c

objs/hs_string.o: src/hs_string.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_string.o \
		src/hs_string.c

objs/hs_utils.o: src/hs_utils.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_utils.o \
		src/hs_utils.c

objs/hs_slock.o: src/hs_slock.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/hs_slock.o \
		src/hs_slock.c

objs/cJSON.o: src/cjson/cJSON.c

	$(CC) -c $(CFLAGS) $(INCLUDES) \
		-o objs/cJSON.o \
		src/cjson/cJSON.c

#########
#  clean #
#########
clean:
	rm -f objs/hs
	rm -f objs/*.o
