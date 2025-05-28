#Agende um cron job para rodar todos os dias às 8h da manhã.
0 8 * * *

#Execute uma tarefa somente às segundas-feiras às 14h30.
30 14 * * 1

#Rode um script a cada 15 minutos.
*/15 * * * * 

#Agende um comando para rodar às 5h da manhã apenas nos dias 1 e 15 de cada mês.
0 5 1,15 * *

#Execute uma tarefa às 18h45 de segunda a sexta-feira.
45 18 * * 1-5

#Rode um cron job de hora em hora, apenas nos finais de semana.
0 * * * 6,7 (ou 0,6 dependendo do sistema)

#Programe uma tarefa para ser executada à meia-noite, apenas em dezembro.
0 0 * 12 *

#Agende uma tarefa para rodar de 10 em 10 minutos entre 9h e 11h da manhã, todos os dias.
*/10 9-11 * * *

#Rode um script todo dia útil (segunda a sexta), às 7h, 12h e 17h.
0 7,12,17 * * 1-5

#Execute um comando às 23h59, somente nos últimos dias do mês (30 e 31).
59 23 30,31 * *