FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

UBOOT_SRC = "git://github.com/SoMLabs/somlabs-uboot-stm32mp1.git;protocol=http"
UBOOT_BRANCH = "v2020.10-stm32mp-somlabs"

SRC_URI = "${UBOOT_SRC};branch=${UBOOT_BRANCH} \
           file://stm32mp15_visionsom_trusted_defconfig \
           "
SRCREV = "de6267ccce9e425778513eb9d9a05a0d61af75f0"

S = "${WORKDIR}/git"

do_configure_prepend () {
	install -m 0644 ${WORKDIR}/stm32mp15_visionsom_trusted_defconfig ${S}/configs
}

