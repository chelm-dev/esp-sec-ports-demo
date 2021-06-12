#include <sys/socket.h>
#include <netdb.h>

int getnameinfo(const struct sockaddr *restrict sa, socklen_t salen,
       char *restrict node, socklen_t nodelen, char *restrict service,
       socklen_t servicelen, int flags)
{
	if (!service)
	   return (EAI_FAIL);

	struct sockaddr_in* addr = (struct sockaddr_in*)sa;
	char* ip = inet_ntoa(addr->sin_addr);
	strncpy(service, ip, servicelen);
	service[servicelen-1] = '\0';
	return (0);
}
