
my_cc := $(local_cc)


include $(build_system)/rule.mk

$(local_built_module): private_cc := $(my_cc)

$(local_built_module): $(all_objects)
	$(transform-o-to-exec)
