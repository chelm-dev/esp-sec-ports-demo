cd tinyssh
CC=/home/chrc/.espressif/tools/xtensa-esp32-elf/esp-2020r2-8.2.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
CFLAGS=-I/home/chrc/projects/esp32/esp-idf/components/newlib/platform_include -I/home/chrc/projects/esp32/esp-idf/components/freertos/include -I/home/chrc/projects/esp32/esp-idf/components/freertos/xtensa/include -I/home/chrc/projects/esp32/esp-idf/components/heap/include -I/home/chrc/projects/esp32/esp-idf/components/log/include -I/home/chrc/projects/esp32/esp-idf/components/lwip/include/apps -I/home/chrc/projects/esp32/esp-idf/components/lwip/include/apps/sntp -I/home/chrc/projects/esp32/esp-idf/components/lwip/lwip/src/include -I/home/chrc/projects/esp32/esp-idf/components/lwip/port/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/lwip/port/esp32/include/arch -I/home/chrc/projects/esp32/esp-idf/components/soc/src/esp32/. -I/home/chrc/projects/esp32/esp-idf/components/soc/src/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/soc/include -I/home/chrc/projects/esp32/esp-idf/components/esp_rom/include -I/home/chrc/projects/esp32/esp-idf/components/esp_common/include -I/home/chrc/projects/esp32/esp-idf/components/esp_system/include -I/home/chrc/projects/esp32/esp-idf/components/xtensa/include -I/home/chrc/projects/esp32/esp-idf/components/xtensa/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/driver/include -I/home/chrc/projects/esp32/esp-idf/components/driver/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/esp_ringbuf/include -I/home/chrc/projects/esp32/esp-idf/components/efuse/include -I/home/chrc/projects/esp32/esp-idf/components/efuse/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/espcoredump/include -I/home/chrc/projects/esp32/esp-idf/components/esp_timer/include -I/home/chrc/projects/esp32/esp-idf/components/esp_ipc/include -I/home/chrc/projects/esp32/esp-idf/components/soc/soc/esp32/. -I/home/chrc/projects/esp32/esp-idf/components/soc/soc/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/soc/soc/esp32/../include -I/home/chrc/projects/esp32/esp-idf/components/vfs/include -I/home/chrc/projects/esp32/esp-idf/components/esp_wifi/include -I/home/chrc/projects/esp32/esp-idf/components/esp_wifi/esp32/include -I/home/chrc/projects/esp32/esp-idf/components/esp_event/include -I/home/chrc/projects/esp32/esp-idf/components/esp_netif/include -I/home/chrc/projects/esp32/esp-idf/components/esp_eth/include -I/home/chrc/projects/esp32/esp-idf/components/tcpip_adapter/include -I/home/chrc/projects/esp32/esp-idf/components/app_trace/include -I/home/chrc/projects/esp32/esp-idf/components/mbedtls/port/include -I/home/chrc/projects/esp32/esp-idf/components/mbedtls/mbedtls/include -I/home/chrc/projects/esp32/esp-idf/components/mbedtls/esp_crt_bundle/include -I/home/chrc/projects/esp32/esp-idf/components/bootloader_support/include -I/home/chrc/projects/esp32/esp-idf/components/app_update/include -I/home/chrc/projects/esp32/esp-idf/components/spi_flash/include -I/home/chrc/projects/esp32/esp-idf/components/wpa_supplicant/include -I/home/chrc/projects/esp32/esp-idf/components/wpa_supplicant/port/include -I/home/chrc/projects/esp32/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/home/chrc/projects/esp32/esp-idf/components/nvs_flash/include -I/home/chrc/projects/esp32/esp-idf/components/pthread/include -I/home/chrc/projects/esp32/esp-idf/components/perfmon/include -I/home/chrc/projects/esp32/esp-idf/components/asio/asio/asio/include -I/home/chrc/projects/esp32/esp-idf/components/asio/port/include -I/home/chrc/projects/esp32/esp-idf/components/cbor/port/include -I/home/chrc/projects/esp32/esp-idf/components/coap/port/include -I/home/chrc/projects/esp32/esp-idf/components/coap/port/include/coap -I/home/chrc/projects/esp32/esp-idf/components/coap/libcoap/include -I/home/chrc/projects/esp32/esp-idf/components/coap/libcoap/include/coap2 -I/home/chrc/projects/esp32/esp-idf/components/console -I/home/chrc/projects/esp32/esp-idf/components/nghttp/port/include -I/home/chrc/projects/esp32/esp-idf/components/nghttp/nghttp2/lib/includes -I/home/chrc/projects/esp32/esp-idf/components/esp-tls -I/home/chrc/projects/esp32/esp-idf/components/esp_adc_cal/include -I/home/chrc/projects/esp32/esp-idf/components/esp_gdbstub/include -I/home/chrc/projects/esp32/esp-idf/components/esp_hid/include -I/home/chrc/projects/esp32/esp-idf/components/tcp_transport/include -I/home/chrc/projects/esp32/esp-idf/components/esp_http_client/include -I/home/chrc/projects/esp32/esp-idf/components/esp_http_server/include -I/home/chrc/projects/esp32/esp-idf/components/esp_https_ota/include -I/home/chrc/projects/esp32/esp-idf/components/protobuf-c/protobuf-c -I/home/chrc/projects/esp32/esp-idf/components/protocomm/include/common -I/home/chrc/projects/esp32/esp-idf/components/protocomm/include/security -I/home/chrc/projects/esp32/esp-idf/components/protocomm/include/transports -I/home/chrc/projects/esp32/esp-idf/components/mdns/include -I/home/chrc/projects/esp32/esp-idf/components/esp_local_ctrl/include -I/home/chrc/projects/esp32/esp-idf/components/sdmmc/include -I/home/chrc/projects/esp32/esp-idf/components/esp_serial_slave_link/include -I/home/chrc/projects/esp32/esp-idf/components/esp_websocket_client/include -I/home/chrc/projects/esp32/esp-idf/components/expat/expat/expat/lib -I/home/chrc/projects/esp32/esp-idf/components/expat/port/include -I/home/chrc/projects/esp32/esp-idf/components/wear_levelling/include -I/home/chrc/projects/esp32/esp-idf/components/fatfs/diskio -I/home/chrc/projects/esp32/esp-idf/components/fatfs/vfs -I/home/chrc/projects/esp32/esp-idf/components/fatfs/src -I/home/chrc/projects/esp32/esp-idf/components/freemodbus/common/include -I/home/chrc/projects/esp32/esp-idf/components/idf_test/include -I/home/chrc/projects/esp32/esp-idf/components/idf_test/include/esp32 -I/home/chrc/projects/esp32/esp-idf/components/jsmn/include -I/home/chrc/projects/esp32/esp-idf/components/json/cJSON -I/home/chrc/projects/esp32/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/home/chrc/projects/esp32/esp-idf/components/libsodium/port_include -I/home/chrc/projects/esp32/esp-idf/components/mqtt/esp-mqtt/include -I/home/chrc/projects/esp32/esp-idf/components/openssl/include -I/home/chrc/projects/esp32/esp-idf/components/spiffs/include -I/home/chrc/projects/esp32/esp-idf/components/ulp/include -I/home/chrc/projects/esp32/esp-idf/components/unity/include -I/home/chrc/projects/esp32/esp-idf/components/unity/unity/src -I/home/chrc/projects/esp32/esp-idf/components/wifi_provisioning/include -I/home/chrc/projects/esp32/sec-porting/components/ssh -I../

make CC=$CC CFLAGS=$CPPFLAGS cross-compile