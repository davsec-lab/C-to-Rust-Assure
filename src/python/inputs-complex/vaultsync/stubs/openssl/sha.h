/* Minimal stand-in for <openssl/sha.h>: only what VaultSync uses. Keeps the
 * 322 OpenSSL static-inline helpers out of the preprocessed corpus. */
#ifndef VAULTSYNC_STUB_OPENSSL_SHA_H
#define VAULTSYNC_STUB_OPENSSL_SHA_H
#include <stddef.h>
#define SHA256_DIGEST_LENGTH 32
typedef struct SHA256state_st {
    unsigned int h[8];
    unsigned int Nl, Nh;
    unsigned int data[16];
    unsigned int num, md_len;
} SHA256_CTX;
int SHA256_Init(SHA256_CTX *c);
int SHA256_Update(SHA256_CTX *c, const void *data, size_t len);
int SHA256_Final(unsigned char *md, SHA256_CTX *c);
#endif
