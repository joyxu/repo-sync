include $(CURDIR)/clear-vars.mk

LOCAL_MODULE :=2mk

LOCAL_TARGET := $(LOCAL_MODULE)

LOCAL_MODULE_P1 := 11
LOCAL_MODULE_P2 := 12

define 2_build_cmd
	@echo "2_build_cmd"
endef

_module_build_cmd := 2_build_cmd


include $(CURDIR)/rule.mk

$(eval $(call add-module,$(LOCAL_TARGET)))