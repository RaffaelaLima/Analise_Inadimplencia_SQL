![image](https://github.com/user-attachments/assets/0ad1a343-10a2-4a28-bb6d-073c4f3d7bc2)# 💳 Projeto SQL – Análise de Risco e Inadimplência

## 🎯 Objetivo  
Executar consultas SQL básicas e avançadas para análise de **risco e inadimplência** em um cenário simulado de crédito.

---

## 📌 Tema: Risco de Crédito e Inadimplência

### 🔎 **Métricas Analisadas**:
- **Índice de inadimplência** = (valor inadimplente / total emprestado) × 100  
- **Clientes com parcelas em atraso**  
- **Média de dias de atraso**  
- **Segmentação da inadimplência por faixa etária/perfil**  
- **Histórico de pagamentos por cliente**

---

## 🗂️ Estrutura do Banco de Dados

### **Tabelas**:
- `clientes`  
- `emprestimos`  
- `parcelas`  

### **Inserção de Dados (via CSV)**  
Após importar os arquivos `.csv` com os nomes `cliente`, `emprestimo` e `parcela`, os dados serão inseridos nas respectivas tabelas no SQLite Online.

---

## 📊 Análise das Métricas

### 1. **Índice de Inadimplência**
🔸 **Resultado**: O percentual do índice de inadimplência é de **19,9%**  
![image](https://github.com/user-attachments/assets/b4393f80-763d-4820-a59b-1a3e4cd9743d)

---

### 2. **Clientes com Parcelas em Atraso**
🔸 **Resultado**: A consulta traz o nome dos clientes que estão com ao menos uma parcela em atraso.

![image](https://github.com/user-attachments/assets/b978cc95-51f2-4a84-956a-35440a96a6d6)


🔸 **Resultado**: Quantidade total de clientes inadimplentes: **18 clientes**

![image](https://github.com/user-attachments/assets/71227cc7-a988-471a-bb09-c2edd73e96cd)

---

### 3. **Média de Dias de Atraso**
🔸 **Resultado**: A média de dias de atraso das parcelas é de **7,9 dias**.

![image](https://github.com/user-attachments/assets/013901b2-cc43-4542-a6b5-474c97857966)

---

### 4. **Segmentação por Faixa Etária**
🔸 **Resultado**: Quantidade de inadimplentes distribuída por faixa etária.

![image](https://github.com/user-attachments/assets/93f9c1b7-90a1-4511-a523-aba962f1d457)

---

### 5. **Histórico de Pagamentos por Cliente**
🔸 **Resultado**: Histórico completo de pagamentos por cliente e empréstimo.


---

## 🛠️ Ferramentas Utilizadas
- **SQLite Online** – [Acessar](https://sqliteonline.com/)
- **SQL** para manipulação e análise dos dados
- **CSV** como fonte de dados simulados

---

## 📌 Considerações Finais

Este projeto simula um cenário fictício para analisar a inadimplência dos clientes de uma instituição financeira. Por meio da construção de um banco de dados relacional e do uso de comandos SQL, foi possível identificar padrões de comportamento entre clientes, detectar sinais de inadimplência e avaliar o risco associado a diferentes perfis de consumidores.
O objetivo foi demonstrar como consultas simples podem gerar insights valiosos e auxiliar na tomada de decisões estratégicas.

