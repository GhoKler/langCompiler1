bold=$(tput bold)
normal=$(tput sgr0)

read -p 'Folder: ' var1
read -p 'c++ File: ' var2
echo "${bold}-Type \"source c++.sh\""

cat > c++.sh << start/end
cd $var1

g++ $var2 -o compiler

bold=\$(tput bold)
normal=\$(tput sgr0)

echo ""
echo "For Excecute The File Type: \"${var1}/compiler\" or \"run\""
echo ""

function run() {
    ${var1}/compiler
}
start/end
