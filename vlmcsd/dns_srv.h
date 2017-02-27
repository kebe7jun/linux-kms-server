/*
 * dns_srv.h
 *
 */

#ifndef DNS_SRV_H_
#define DNS_SRV_H_
#ifndef NO_DNS


#include "types.h"

typedef struct
{
	uint32_t random_weight;
	uint16_t priority;
	uint16_t weight;
	char serverName[260];
}  kms_server_dns_t, *kms_server_dns_ptr;

typedef struct
{
	uint16_t priority;
	uint16_t weight;
	uint16_t port;
	unsigned char name[1];
} dns_srv_record_t, *dns_srv_record_ptr;

int getKmsServerList(kms_server_dns_ptr** serverlist, const char *restrict query);
void sortSrvRecords(kms_server_dns_ptr* serverlist, const int answers);

#endif // NO_DNS
#endif /* DNS_SRV_H_ */
