TOPDIR := $(CURDIR)

$(LOCAL_TARGET): PRIVATE_CONFIG_CMD := $(_module_config_cmd)
$(LOCAL_TARGET): PRIVATE_BUILD_CMD := $(_module_build_cmd)
$(LOCAL_TARGET): PRIVATE_INSTALL_CMD := $(_module_install_cmd)

.PHONY: $(LOCAL_TARGET)
$(LOCAL_TARGET):
	$(call $(PRIVATE_BUILD_CMD))

define add-module
$(eval ALL_MODULES += $(1))
endef
