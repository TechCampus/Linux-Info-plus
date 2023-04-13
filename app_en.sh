#!/bin/bash
echo "$(tput setaf 1)╔==========================================================╗"
arr[0]="
▬▬▬.◙.▬▬▬
═▂▄▄▓▄▄▂
◢◤ █▀▀████▄▄▄▄◢◤
█▄ █ █▄ ███▀▀▀▀▀▀▀╬
◥█████◤
══╩══╩═
╬═╬
╬═╬ 
╬═╬ 
╬═╬       TechCampus
╬═╬☻/       Linux
╬═╬/▌
╬═╬/ "
arr[1]="88                                88                              
88                                88                              
88                                88                              
88ddPPYbaf   adPPYYba   _adPPYba_ 88   dd8   adPPYba  8bRdPPYba  
88P      8a 88      Y8 a8         88  a8   a8P_____88 88P     Y8  
88       88  adPPPPP88 8b         8888     8PP        88          
88       88 88      88  8a    aa  8RTYba   8b     aa  88          
88       88 er8bbdPeY8  erYbbd8f3 88   Y8a   YYbbd88  88    "
arr[2]="                                                           
                           .,:cc:,'                           
                         .llllllllll'                         
                         llllllllllll.                        
                         llllllllllll,                        
             .....       'llllllllll:       .....             
          .:lllllllc'      .llllll;      .:lllllllc'          
         .llllllllllll                  'lllllllllll:         
         cllllllllllll                  lllllllllllll         
         .lllllllllll;      ..''..      .lllllllllll,         
           lllllllll'     :llllllllc.     lllllllll.          
  .,',.       ;cc'      .llllllllllll:      .clc.      .,',.  
 llllllc                llllllllllllll.               ;llllll 
 ;lllll;                clllllllllllll                ,lllll: 
            .,;::,'      llllllllllll.     .,;:;,'            
          ,lllllllll:     .llllllll;     ;lllllllll;          
         ,llllllllllll                  ;llllllllllll         
         :llllllllllll                  cllllllllllll         
          lllllllllll'       ..'.       .lllllllllll'         
           :llllllll      .colllll:,      :llllllll           
                         :lllllllllll                         
                        .llllllllllll;                        
                         llllllllllll.                        
                          clllllllll.                         
                            .llll,                            "
rand=$[$RANDOM % ${#arr[@]}]
echo "${arr[$rand]}" | lolcat
echo "$(tput setaf 1)╠==========================================================╣"
echo "$(tput setaf 1)╠=================== Linux  Info+ =========================╣"
echo "$(tput setaf 1)╠===================     v0.1     =========================╣" 
echo "$(tput setaf 1)╠===================   Credits ↓     ======================╣"
echo "$(tput setaf 1) Fatima Aljafri, Khairiah Alfaifi, Muhannad, Jawaher, Faisal, Yaser"  | lolcat
echo "$(tput setaf 1)╚==========================================================╝"
echo ""




while true; do
    echo "$(tput setaf 2)1. System Info"
    echo "2. RAM/CPU Info"
    echo "3. HD"
    echo "4. Users"
    echo "5. Who is online"
    echo "6. Runing Services"
    echo "7. Open ports and OS info"
    echo "8. Local network scan"
    echo "9. DNS settings"
    echo "10. Cron jobs"
    echo "11. Server internet speed test"
    echo "12. Installed software"
    echo "13. Apache log mini analysis"
    echo "Y. Install necessary software for this tool"

    echo

    echo -n "$(tput setaf 3)Enter your option, or 0 for exit: " ;tput sgr0
    read choice
    echo

case $choice in
     1)
            # عرض الرأس
            echo "$(tput setaf 1)====================== System Info =============================";tput sgr0

            # عرض اسم المضيف
            echo -e "$(tput setaf 4)Hostname:\t\t$(tput setaf 6)"`hostname`;tput sgr0

            # عرض المستخدم الحالي
            echo -e "$(tput setaf 4)User:\t\t\t$(tput setaf 6)"`whoami`;tput sgr0

            # عرض وقت تشغيل النظام
            echo -e "$(tput setaf 4)uptime:\t\t\t$(tput setaf 6)"`uptime | awk '{print $3,$4}' | sed 's/,//'`;tput sgr0

            # عرض الشركة المصنعة للنظام
            echo -e "$(tput setaf 4)Manufacturer:\t\t$(tput setaf 6)"`cat /sys/class/dmi/id/chassis_vendor`;tput sgr0

            # عرض اسم المنتج الخاص بالنظام
            echo -e "$(tput setaf 4)Product Name:\t\t$(tput setaf 6)"`cat /sys/class/dmi/id/product_name`;tput sgr0

            # عرض الرقم التسلسلي للنظام
            echo -e "$(tput setaf 4)Serial Number:\t\t$(tput setaf 6)"`cat /sys/class/dmi/id/product_serial`;tput sgr0

            # عرض نوع الجهاز (افتراضي أو مادي)
            echo -e "$(tput setaf 4)Machine Type:\t\t$(tput setaf 6)"`vserver=$(lscpu | grep Hypervisor | wc -l); if [ $vserver -gt 0 ]; then echo "VM"; else echo "Physical"; fi`;tput sgr0
            
            # عرض اسم نظام التشغيل وإصداره
            echo -e "$(tput setaf 4)Operating System:\t$(tput setaf 6)"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`;tput sgr0

            # عرض إصدار نواة النظام
            echo -e "$(tput setaf 4)Kernel:\t\t\t$(tput setaf 6)"`uname -r`;tput sgr0

            # عرض بنية النظام
            echo -e "$(tput setaf 4)Architecture:\t\t$(tput setaf 6)"`arch`;tput sgr0

            # عرض اسم المعالج
            echo -e "$(tput setaf 4)Processor Name:\t\t$(tput setaf 6)"`awk -F':' '/^model name/ {print $2}' /proc/cpuinfo | uniq | sed -e 's/^[ \t]*//'`;tput sgr0

            # عرض المستخدمين النشطين
            echo -e "$(tput setaf 4)Active User:\t\t$(tput setaf 6)"`w | cut -d ' ' -f1 | grep -v USER | xargs -n1`;tput sgr0

            # عرض عنوان IP الرئيسي للنظام
            echo -e "$(tput setaf 4)System Main IP:\t\t$(tput setaf 6)"`hostname -I`;tput sgr0

            # عرض التذييل
            echo "$(tput setaf 1)================================================================";tput sgr0
            echo 
            echo 

;;
     2)
            # يعرض العنوان
            echo "$(tput setaf 1)====================== RAM/CPU Info =============================";tput sgr0

            # يعرض نسبة استخدام الذاكرة
            echo -e "Memory Usage:\t"`free | awk '/Mem/{printf("%.2f%"), $3/$2*100}'`

            # يعرض نسبة استخدام الذاكرة الافتراضية
            echo -e "Swap Usage:\t"`free | awk '/Swap/{printf("%.2f%"), $3/$2*100}'`

            # يعرض نسبة استخدام المعالج
            echo -e "CPU Usage:\t"`cat /proc/stat | awk '/cpu/{printf("%.2f%\n"), ($2+$4)*100/($2+$4+$5)}' |  awk '{print $0}' | head -1`

            # يعرض الذيل
            echo "$(tput setaf 1)================================================================";tput sgr0
            echo 
            echo 
;;
     3)
            # يعرض العنوان
            echo "$(tput setaf 1)====================== HD =============================";tput sgr0

            # يعرض صف العنوان لمعلومات مساحة التخزين
            df -H --output=source,size,used,avail | head -n1 

            # يعرض معلومات مساحة التخزين لقسم الجذر
            df -H --output=source,size,used,avail | grep --color=never "/dev"

            # يعرض الذيل
            echo "$(tput setaf 1)=======================================================";tput sgr0
            echo 
            echo 
;;
     4)
            # يعرض العنوان
              echo "$(tput setaf 1)====================== Users =============================";tput sgr0

            # يعرض معلومات المستخدمين في جدول
            printf "%-15s|%-8s|%-8s|%-8s|%-25s|%-25s|%-15s\n" "Username" "Password" "User ID" "Group ID" "Comment" "Home Directory" "Shell" && awk -F ':' '/\/home/ {printf "%-15s|%-8s|%-8s|%-8s|%-25s|%-25s|%-15s\n", $1, $2, $3, $4, $5, $6, $7}' /etc/passwd | column -t -s '|'

            # يعرض الذيل
            echo "$(tput setaf 1)==========================================================";tput sgr0
            echo 
            echo 

     ;;
     5)

            # يعرض العنوان
            echo "$(tput setaf 1)====================== Who is Online? ==========================";tput sgr0

            # يعرض قائمة المستخدمين الذين يستخدمون النظام حالياً
            w

            # يعرض الذيل
            echo "$(tput setaf 1)================================================================";tput sgr0
            echo 
            echo 
;;
     6)
            # يعرض معرف المستخدم والمجموعة الخاصة بالمستخدم الحالي بتنسيق ملون
            id | lolcat

            # يعرض سطرين فارغين
            echo 
            echo 
;;
     7)
            # تعريف رسم الحركة المستخدم في البرنامج
            spinner()
            {
                local pid=$1
                local delay=0.1
                local spinstr='|/-\'
                while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
                    local temp=${spinstr#?}
                        printf "\r $(tput setaf 4)Scanning ..............$(tput sgr0) [%c] " "$spinstr"
                    local spinstr=$temp${spinstr%"$temp"}
                    sleep $delay
                done
                printf "\r $(tput setaf 4)Scan completed!         $(tput sgr0)"
                echo
            }

            # التحقق من وجود صلاحيات المستخدم المطلوبة قبل بدء الرسم الحركي
            if sudo -v >/dev/null 2>&1; then
                spinner_pid=""
                spinner $$ &
                spinner_pid=$!

                # ينفذ فحصًا للنظام المحلي باستخدام nmap مع إمساك البانر وتحديد نوع النظام التشغيل
                scan_results=$(sudo nmap -sV -O --open localhost | awk '/tcp/{printf "%-10s | %-20s | %-15s\n",$1,$3,$4;}' | sort)

                # يتم إيقاف رسم الحركة ومسح السطر
                kill "$spinner_pid" >/dev/null 2>&1
                printf "\r $(tput setaf 4)Scan completed!         $(tput sgr0)\n"

                # تنسيق الإخراج كجدول مع عنوان أحمر
                printf "\033[31m%-10s | %-20s | %-15s\033[0m\n" "Port" "Service" "Version"
                printf "\033[34m%-10s-|-%-20s-|-%-15s\033[0m\n" "----------" "--------------------" "---------------"
                echo "$scan_results" | column -t -s "|"

                # عرض نتائج تحديد نوع النظام التشغيل
                printf "\n\033[31mOS Fingerprinting Results:\033[0m\n"
                echo "===================================="
                sudo nmap -O --open localhost | awk '/Running/{print $2,$3,$4,$5,$6,$7,$8,$9;}/OS details/{print $0;}'
                echo
            else
                echo "$(tput setaf 1)Sudo password required to run the scan.$(tput sgr0)"
                sudo true
            fi
            echo
;;
     8)
 
            # يعرض رسالة تشير إلى أن الفحص جارٍ
            echo "$(tput setaf 1)Scanning ...";tput sgr0

            # يحصل على نطاق IP للشبكة الحالية
            ip_range=$(ip route | grep 'default via' | awk '{print $3}' | awk -F"." '{print $1"."$2"."$3".0/24"}')

            # ينفذ فحص ping على الشبكة ويسترد النتائج
            scan_results=$(sudo nmap -sP $ip_range | awk '/Nmap scan report/{printf $5;}/MAC Address:/{print " => "$3;}' | sort)

            # يعرض نتائج الفحص في شكل جدول مع محاذاة مناسبة
            echo -e "\033[31mLocal IP Scan Results:\033[0m"
            echo -e "\033[34m======================\033[0m"
            echo -e "\033[34mIP Address   |  MAC Address\033[0m"
            echo -e "\033[34m-------------|------------------\033[0m"
            echo "$scan_results" | column -t

            # سطرين فارغين لأغراض جمالية
            echo
            echo

 ;;
     9)

            # يقرأ ويصفي محتوى ملف /etc/resolv.conf ويزيل جميع الأسطر التي تبدأ بـ "#"
            output=$(cat /etc/resolv.conf | grep -v "#")

            # يعيد كلمة "nameserver" باستخدام نص أحمر ويحفظها في متغير جديد
            highlighted_output=$(echo "$output" | sed -E "s/nameserver/$(tput setaf 1)&$(tput sgr0)/g")

            # يعرض المخرجات التي تم تحديدها
            echo "$highlighted_output"
            echo
;;
     10)
            # هذه الوظيفة تحويل الفترة الزمنية المحددة في جدولة cron إلى تنسيق يمكن قراءته بواسطة البشر
            interval_name() {
                # استخدم جملة case لمطابقة الوسيطة المدخلة مع أنماط مختلفة
                case $1 in
                    '*' ) echo "Any" ;; # إذا كانت الوسيطة "*", أعد "أي"
                    '*/5' ) echo "Every 5" ;; # إذا كانت الوسيطة "*/5", أعد "كل 5"
                    '*/10' ) echo "Every 10" ;; # إذا كانت الوسيطة "*/10", أعد "كل 10"
                    '*/15' ) echo "Every 15" ;; # إذا كانت الوسيطة "*/15", أعد "كل 15"
                    '*/30' ) echo "Every 30" ;; # إذا كانت الوسيطة "*/30", أعد "كل 30"
                    * ) echo "$1" ;; # إذا لم تتطابق الوسيطة مع أي من الأنماط أعلاه، أعد الوسيطة كما هي
                esac
            }   

            # هذه الوظيفة تحويل رقم الشهر إلى اختصار شهر مكون من ثلاثة أحرف
            month_name() {
                # استخدم جملة case لمطابقة الوسيطة المدخلة مع أرقام شهور مختلفة
                case $1 in
                    '1' ) echo "Jan" ;; # إذا كانت الوسيطة 1، أعد "ينا"
                    '2' ) echo "Feb" ;; # إذا كانت الوسيطة 2، أعد "فبر"
                    '3' ) echo "Mar" ;; # إذا كانت الوسيطة 3، أعد "مار"
                    '4' ) echo "Apr" ;; # إذا كانت الوسيطة 4، أعد "أبر"
                    '5' ) echo "May" ;; # إذا كانت الوسيطة 5، أعد "ماي"
                    '6' ) echo "Jun" ;; # إذا كانت الوسيطة 6، أعد "يون"
                    '7' ) echo "Jul" ;; # إذا كانت الوسيطة 7، أعد "يول"
                    '8' ) echo "Aug" ;; # إذا كانت الوسيطة 8، أعد "أغس"
                    '9' ) echo "Sep" ;; # إذا كانت الوسيطة 9، أعد "سبت"
                    '10' ) echo "Oct" ;; # إذا كانت الوسيطة 10، أعد "أكت"
                    '11' ) echo "Nov" ;; # إذا كانت الوسيطة 11، أعد "نوف"
                    '12' ) echo "Dec" ;; # إذا كانت الوسيطة 12، أعد "ديس"
                    * ) interval_name "$1" ;; # إذا لم تتطابق الوسيطة مع أي من أرقام الشهور أعلاه، استدعي الوظيفة interval_name بالوسيطة كمدخل
                esac
            }

            # هذه الوظيفة تحويل رقم يوم الأسبوع إلى اختصار يوم الأسبوع المكون من ثلاثة أحرف
            weekday_name() {
                # استخدم جملة case لمطابقة الوسيطة المدخلة مع أرقام أيام الأسبوع المختلفة
                case $1 in
                    '0' ) echo "Sun" ;; # إذا كانت الوسيطة 0، أعد "الأحد"
                    '1' ) echo "Mon" ;; # إذا كانت الوسيطة 1، أعد "الاثنين"
                    '2' ) echo "Tue" ;;  # إذا كانت الوسيطة 2، أعد "الثلاثاء"
                    '3' ) echo "Wed" ;; # إذا كانت الوسيطة 3، أعد "الأربعاء"
                    '4' ) echo "Thu" ;; # إذا كانت الوسيطة 4، أعد "الخميس"
                    '5' ) echo "Fri" ;; # إذا كانت الوسيطة 5، أعد "الجمعة"
                    '5' ) echo "Fri" ;; # إذا كانت الوسيطة 6، أعد "السبت"
                    * ) interval_name "$1" ;; # إذا لم تتطابق الوسيطة مع أي من أرقام أيام الأسبوع أعلاه، استدعي الوظيفة interval_name بالوسيطة كمدخل
                esac
            }

            # تحويل رقم اليوم إلى سلسلة تشمل لاحقة، مثل "1st" أو "2nd" أو "3rd"، إلخ
            day_name() {
                # استخدم جملة case لمطابقة الوسيطة المدخلة مع أرقام الأيام المختلفة
                case $1 in
                    '1' ) echo "1ـ" ;; # إذا كانت الوسيطة 1، أعد "1ـ"
                    '2' ) echo "2ـ" ;; # إذا كانت الوسيطة 2، أعد "2ـ"
                    '3' ) echo "3ـ" ;; # إذا كانت الوسيطة 3، أعد "3ـ"
                    * ) echo "${1}ـ" ;; # إذا لم تتطابق الوسيطة مع أي من أرقام الأيام المذكورة أعلاه، أعد الوسيطة مع لاحقة "ـ"
                esac
            }

            # تعريف بعض رموز الألوان لاستخدامها في الناتج
            RED="\033[31m"
            RESET="\033[0m"

            # الحصول على إجمالي عدد مهام cron
            total_jobs=$(crontab -l | grep -v '^#\|^$' | wc -l)

            # طباعة إجمالي عدد مهام cron باللون السماوي
            echo "$(tput setaf 6)Total cron jobs: $total_jobs";tput sgr0
            echo

            # طباعة صف العنوان للجدول باللون الأحمر
            printf "${RED}%-25s%-15s%-15s%-15s%-15s%-15s%s${RESET}\n" "Command" "Minute" "Hour" "Day" "Month" "Weekday"
            # طباعة خط من الشرطات لفصل صف العنوان عن باقي الجدول
            printf "%-25s%-15s%-15s%-15s%-15s%-15s%s\n" "-------" "-------" "----" "---" "-----" "------"

            # استخدم أمر crontab للحصول على قائمة مهام cron، ثم استبعد أي تعليقات أو أسطر فارغة
            # قم بتوجيه الناتج المتبقي إلى awk لاستخراج حقول الدقيقة والساعة واليوم والشهر ويوم الأسبوع والأمر
            # أخيرًا، قم بالتكرار على كل سطر من الناتج ومعالجة كل حقل لطباعة صفوف الجدول
            crontab -l | grep -v "#" | awk '{print $6,$1,$2,$3,$4,$5}' | while read -r command minute hour day month weekday; do
                minute_text=$(interval_name "$minute") # تحويل حقل الدقيقة إلى تنسيق سهل القراءة باستخدام الوظيفة interval_name
                hour_text=$(interval_name "$hour") # تحويل حقل الساعة إلى تنسيق سهل القراءة باستخدام الوظيفة interval_name
                day_text=$(day_name "$day") # تحويل حقل اليوم إلى تنسيق سهل القراءة باستخدام الوظيفة day_name
                # تحويل حقل الشهر إلى تنسيق قابل للقراءة من قبل الإنسان باستخدام دالة month_name
                month_text=$(month_name "$month")
                # تحويل حقل اليوم من الأسبوع إلى تنسيق قابل للقراءة من قبل الإنسان باستخدام دالة weekday_name
                weekday_text=$(weekday_name "$weekday")

                # طباعة صف من الجدول بالحقول المحولة
                printf "%-25s%-15s%-15s%-15s%-15s%-15s%s\n" "$command" "$minute_text" "$hour_text" "$day_text" "$month_text" "$weekday_text"
                done

                # طباعة سطر فارغ بعد الانتهاء من عملية الطباعة
                echo
;;
        11)
                # هذه الدالة تقوم بإنشاء رسوم متحركة بسيطة لنقطة تتحرك من اليسار إلى اليمين
                animation() {
                while : ; do
                    echo -n "."
                    sleep 0.5
                done
                }

                # طباعة رسالة "جاري التحميل" باللون الأزرق السماوي
                echo -n "$(tput setaf 6)Loading"

                # بدء تشغيل دالة الرسوم المتحركة في الخلفية وحفظ معرف عملية التشغيل الخاص بها
                animation &
                animation_pid=$!

                # تشغيل أمر speedtest-cli وحفظ نتائجه في متغير
                output=$(speedtest-cli --simple)

                # إيقاف تشغيل دالة الرسوم المتحركة بقتل عملية التشغيل الخاصة بها والانتظار لحين انتهائها
                kill $animation_pid
                wait $animation_pid 2>/dev/null

                # نقل المؤشر إلى بداية السطر ومسحه
                echo -ne "\r"

                # التحقق من حالة الإنهاء الخاصة بالأمر السابق (speedtest-cli)
                if [ $? -eq 0 ]; then
                    # إذا نجح الأمر، فسيتم طباعة النتائج باللون الأبيض وإعادة تعيين لون النص
                    echo ;tput sgr0
                    echo "$output"
                fi

                # طباعة سطر فارغ
                echo
;;
        12)
            # هذا الكود ينشئ قائمة تفاعلية تسمح للمستخدم بعرض أو البحث عن البرامج المثبتة وقائمة البرامج التي تعمل حاليًا

            # استخدام حلقة while لتكرار القائمة حتى يختار المستخدم الخروج
            while true; do
                echo
                echo "$(tput setaf 2)Select an option:";tput sgr0  # طباعة نص القائمة باللون الأخضر
                echo "$(tput setaf 1)A) List all installed software" # طباعة الخيار أ باللون الأحمر
                echo "B) Search for installed software" # طباعة الخيار ب
                echo "C) List all running software" # طباعة الخيار ج
                echo "D) back ";tput sgr0 # طباعة الخيار د باللون الأبيض وإعادة تعيين لون النص
                read option # قراءة إدخال المستخدم وتخزينه في المتغير option

                case "$option" in
                    "A") # إذا اختار المستخدم الخيار أ، سيتم عرض جميع البرامج المثبتة
                        echo "Installed software:"
                        dpkg --get-selections | grep -v deinstall | cut -f1 # استخدام dpkg للحصول على قائمة الحزم المثبتة وتصفية الحزم الملغاة وطباعة أسماء الحزم فقط
                        echo
                        ;;
                "B") # إذا اختار المستخدم الخيار ب، سيتم البحث عن البرامج المثبتة
                            echo "Enter a search term:"
                            read search_term # طلب من المستخدم إدخال مصطلح البحث
                            echo "The searched text is: $(tput setaf 2)"$search_term ;tput sgr0 # طباعة مصطلح البحث باللون الأخضر
                            sleep 2 # إيقاف التشغيل لمدة 2 ثوانٍ
                            echo "Matching software:"
                            dpkg --get-selections | grep -v deinstall | grep "$search_term" | cut -f1 | sed 's/^/* /' # استخدام dpkg للحصول على قائمة الحزم المثبتة وتصفية الحزم الملغاة والبحث باستخدام مصطلح البحث وطباعة أسماء الحزم فقط مع إضافة علامة "*" قبل كل اسم
                            echo
                            ;;
                        "C") # إذا اختار المستخدم الخيار ج، سيتم عرض جميع البرامج العاملة
                            echo "Running software:"
                            ps aux | awk '{print $11}' | sort | uniq # استخدام ps للحصول على قائمة العمليات العاملة، وطباعة أسماء الأوامر فقط وفرزها أبجدياً وإزالة الأسماء المتكررة
                            echo
                            ;;
                        "D") # إذا اختار المستخدم الخيار د، سيتم الخروج من الحلقة وإنهاء البرنامج
                            break     
                            ;;
                        *) # إذا أدخل المستخدم خيارًا غير صالح، سيتم طباعة رسالة خطأ
                            echo "Invalid option. Please enter A, B, or C."
                            ;;
                    esac
                done

                echo # طباعة سطر فارغ بعد انتهاء الحلقة.
;;
        13)

            # تعريف مسار ملف سجل وصول Apache
            log_file="/var/log/apache2/access.log"

            # استخدام awk لاستخراج عناوين IP من ملف السجل، وترتيبها، وعدد حدوث كل عنوان IP، وترتيب النتائج بالترتيب العكسي
            requests=$(awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr)

            # طباعة النتائج في شكل جدول
            echo -e "\033[31mApache Access Log Analysis:\033[0m" # طباعة العنوان الرئيسي باللون الأحمر
            echo -e "\033[34m==========================\033[0m" # طباعة سطر من علامات "=" باللون الأزرق
            echo -e "\033[34mRequests      | IP Address\033[0m" # طباعة عناوين الأعمدة باللون الأزرق
            echo -e "\033[34m------------|------------\033[0m" # طباعة سطر من علامات "-" باللون الأزرق
            echo "$requests" | awk '{printf "%-14s| %s\n", $1, $2}' # طباعة النتائج كجدول مهيأ، مع العدادات في العمود الأول وعناوين IP في العمود الثاني
            echo
            ;;
        Y) # إذا أدخل المستخدم "Y"، تحقق من وجود الحزم المفقودة وقم بتثبيتها إذا لزم الأمر
            # تعريف مصفوفة من الحزم اللازمة
            declare -a packages_needed=("nmap" "lolcat" "sysvbanner" "speedtest-cli")
            missing_packages=()

            # التحقق مما إذا كانت كل حزمة مثبتة، وإضافتها إلى مصفوفة الحزم المفقودة إذا كانت غير مثبتة
            for package in "${packages_needed[@]}"
            do
            if ! command -v "$package" &> /dev/null; then
                missing_packages+=("$package")
            fi
            done
            # إذا لم تكن هناك حزم مفقودة، أعلم المستخدم واخرج
            if [[ ${#missing_packages[@]} -eq 0 ]]; then
                echo
                echo "$(tput setaf 1)All necessary packages are already installed.";tput sgr0
                echo
            else # وإلا، اطلب من المستخدم تثبيت الحزم المفقودة
                echo "The following packages are needed: ${missing_packages[@]}"
                read -p "Do you want to install these packages? (y/n) " answer
                echo
                if [[ "$answer" == "y" ]]; then # إذا أدخل المستخدم "y"، قم بتثبيت الحزم المفقودة باستخدام apt-get
                sudo apt-get install "${missing_packages[@]}"
                echo
                echo "$(tput setaf 1)Necessary packages installed!";tput sgr0
                echo
                else # وإلا، أعلم المستخدم بأن الحزم اللازمة غير مثبتة
                echo
                echo "$(tput setaf 1)Necessary packages not installed.";tput sgr0
                echo
                fi
            fi
     ;;
     0)
            echo "
            .______   ____    ____  _______ 
            |   _  \  \   \  /   / |   ____|
            |  |_)  |  \   \/   /  |  |__   
            |   _  <    \_    _/   |   __|  
            |  |_)  |     |  |     |  |____ 
            |______/      |__|     |_______|
                                            
            " | lolcat
            echo "$(tput setaf 2)Have a nice Day :)";tput sgr0
     break
     ;;
     *)
            echo "Erro, please select from 1-13, or select 0 to exit"
     ;;
esac  
done