################################################################################
#
# libosip2
#
################################################################################

LIBOSIP2_VERSION = 3.6.0
LIBOSIP2_SITE = $(BR2_GNU_MIRROR)/osip
LIBOSIP2_INSTALL_STAGING = YES
LIBOSIP2_LICENSE = LGPLv2.1+
LIBOSIP2_LICENSE_FILES = COPYING

LIBOSIP2_CONF_OPT = \
	--enable-mt=$(if $(BR2_TOOLCHAIN_HAS_THREADS),yes,no)

$(eval $(autotools-package))
