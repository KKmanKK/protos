PKG_PROTO_PATH = $(CURDIR)/proto
PKG_GEN_PATH = $(CURDIR)/gen/go

.protoc:
	protoc -I $(PKG_PROTO_PATH) $(PKG_PROTO_PATH)/userService/userService.proto --go_out=$(PKG_GEN_PATH)
	--go_opt=paths=source_relative -go_grpc_out=$(PKG_GEN_PATH) --go_grpc_out=paths=source_relative