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


my_kind := BUILD

my_module_name := $(strip $(LOCAL_MODULE))

intermediates := $(my_kind)_out_intermediates/$(LOCAL_MODULE)

local_built_module := $(intermediates)/$(LOCAL_MODULE)

local_install_module := $(my_kind)_out_root/$(LOCAL_MODULE)

$(my_module_name): $(local_install_module)


.PHONY: $(my_module_name)
$(my_module_name): $(local_built_module)
	@echo "buid $@ successfully"

all_modules += $(my_module_name)

all_modules.$(my_module_name).built := $(local_built_module)

all_modules.$(my_module_name).install := $(local_install_module)
