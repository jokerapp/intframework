#!/bin/bash

# Bu script, Termux'ta 'intconsole' komutu için bir alias oluşturur ve .bashrc dosyasına ekler.

chmod +x terbuild.sh

# İlk çalıştırma için bir kontrol dosyası oluşturun.
if [ ! -f "$HOME/intframework/.install_done" ]; then
    python3 "$HOME/intframework/installintconsole.py"
    touch "$HOME/intframework/.install_done"
fi

# 'intconsole' komutunu tanımlayın.
echo "alias intconsole='cd ~/intframework && python3 intconsoleV2.py && source ~/.bashrc'" >> ~/.bashrc

# .bashrc dosyasını yeniden yükleyin.
source ~/.bashrc

sh oip.sh

# Kullanıcıya scriptin başarıyla eklendiğini bildirin.
echo "intconsole komutu '.bashrc' dosyanıza başarıyla eklendi ve hazır."