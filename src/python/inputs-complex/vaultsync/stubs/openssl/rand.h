/* Minimal stand-in for <openssl/rand.h>: only what VaultSync uses. */
#ifndef VAULTSYNC_STUB_OPENSSL_RAND_H
#define VAULTSYNC_STUB_OPENSSL_RAND_H
int RAND_bytes(unsigned char *buf, int num);
#endif
