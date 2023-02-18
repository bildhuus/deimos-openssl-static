/+ dub.sdl:
	name "test"
	dependency "openssl-static" path="."
+/
module test;

import deimos.openssl.evp;

void main()
{
	auto ctx = EVP_MD_CTX_create();
	assert(ctx !is null);
	EVP_MD_CTX_destroy(ctx);
}
