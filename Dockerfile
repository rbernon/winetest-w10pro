FROM dockurr/windows

COPY install.bat /oem/install.bat
COPY startup.bat /oem/startup.bat
COPY autorun.bat /data/autorun.bat
COPY sudo.exe /data/sudo.exe

ENV DISK_FLAGS="compression_type=zstd"
ENV DISK_FMT="qcow2"
ENV DISK_SIZE="16G"

ENV RAM_SIZE="4G"
ENV CPU_CORES="2"

ENV REGION="en-US"
ENV KEYBOARD="en-US"
ENV LANGUAGE="English"
ENV ARGUMENTS="-device ich9-intel-hda -device hda-output -audio none "

CMD ["/bin/bash"]
