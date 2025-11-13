cd /container/application/lib
curl -L -o wkhtmltox_0.12.6.1-3.bookworm_amd64.deb \
  https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.bookworm_amd64.deb

dpkg-deb -x wkhtmltox_0.12.6.1-3.bookworm_amd64.deb wkhtmltox


mkdir -p /container/application/lib/local-libs
cd /container/application/lib/local-libs

# Download and unpack Ubuntu 22.04 version of libjpeg6b
curl -LO http://archive.ubuntu.com/ubuntu/pool/universe/libj/libjpeg6b/libjpeg62_6b2-3_amd64.deb
dpkg-deb -x libjpeg62_6b2-3_amd64.deb .

cd /container/application/lib/local-libs

# Download & unpack Ubuntu 22.04 (Jammy) build of libXrender
curl -LO http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender1_0.9.10-1build4_amd64.deb
dpkg-deb -x libxrender1_0.9.10-1build4_amd64.deb .


