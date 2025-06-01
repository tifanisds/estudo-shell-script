#1. 📨 Como faz para pegar emails simples como joao@email.com?
"[a-zA-Z0-9]+@[a-zA-Z0-9]+\.com(.br)?"

#2. 📧 Como faz para pegar emails com ponto no nome, tipo
"[a-zA-Z0-9]+([-._]?[a-zA-Z0-9]+)*@[a-zA-Z0-9]+\.com(.br)?"

#3. Como faz para pegar CPFs no formato 123.456.789-00?
"([0-9]{3}\.){2}[0-9]{3}\-[0-9]{2}"

#4. 📅 Como faz para pegar datas no formato dd/mm/aaaa?
"([0-9]{2}\/){2}[0-9]{4}"

#5. 🕐 Como faz para pegar horas no formato HH:MM (24h)?
"[0-9]{2}\:[0-9]{2}"

#6. 📞 Como faz para pegar números de telefone celular brasileiros com DDD, como (71) 91234-5678?
"\([0-9]{2}\) 9[0-9]{4}\-[0-9]{4}"

#7. 🔠 Como faz para pegar palavras que começam com letra maiúscula?
"^[A-Z]"

#8. 🧑‍💼 Como faz para pegar nomes compostos (duas palavras começando com maiúscula)?
"^[A-Z][a-z]+ [A-Z][a-z]+"

#9. 🔤 Como faz para pegar palavras terminadas em “ção”?
"ção$"