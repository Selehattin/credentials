echo "FuserMount yapılıyor ..."
sleep 3
fusermount -u ~/gr01
echo "Mount yapılıyor ..."
rclone mount G1: /root/gr01 --allow-non-empty --daemon --vfs-cache-mode off --multi-thread-streams 30 --low-level-retries 2 --retries 2 --vfs-read-chunk-size 128K --drive-chunk-size 1M --buffer-size off --max-backlog 20000 --contimeout 9s --no-traverse --no-modtime --read-only --log-level INFO --stats 1m --drive-service-account-file /root/add/selo01.json
sleep 3
