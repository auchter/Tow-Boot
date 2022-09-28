{
  device = {
    manufacturer = "PINE64";
    name = "PineCube";
    identifier = "pine64-pinecube";
    productPageURL = "https://www.pine64.org/cube/";
  };

  hardware = {
    soc = "allwinner-s3";
    withDisplay = false;
    SPISize = 16 * 1024 * 1024; # 16 MiB
  };

  Tow-Boot = {
    defconfig = "pinecube_defconfig";
    patches = [
      ./0001-sunxi-SPL-SPI-enable-support-for-V3S.patch
      ./0002-configs-enable-SPI-boot-support-for-Pinecube.patch
      ./0003-sun8i_emac-add-V3S-support.patch
      ./0004-clk_v3s-add-EMAC-and-EPHY.patch
      ./0005-configs-Enable-ethernet-on-Pinecube.patch
    ];
  };
}
