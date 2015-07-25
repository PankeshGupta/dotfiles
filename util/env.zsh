function encrypt {
	openssl enc -e -des3 -in $1 -out encrypt/$1 -k $2;
}

function decrypt {
    openssl enc -d -des3 -in $1 -out $(basename "$1") -k $2;  
}

export encrypt;
