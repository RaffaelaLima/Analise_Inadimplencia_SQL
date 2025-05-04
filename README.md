# 💳 Projeto SQL – Análise de Risco e Inadimplência

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
Após importar os arquivos `.csv` com os nomes `cliente`, `emprestimo` e `parcela`, os dados serão inseridos nas respectivas tabelas.

---

## 📊 Análise das Métricas

### 1. **Índice de Inadimplência**
🔸 **Resultado**: O percentual do índice de inadimplência é de **19,9%**  

![Índice de Inadimplência](https://github.com/user-attachments/assets/12fcbbbe-d15e-4926-87c8-c0b93bb365d5)

---

### 2. **Clientes com Parcelas em Atraso**
🔸 **Resultado**: A consulta traz o nome dos clientes que estão com ao menos uma parcela em atraso.

![Clientes com Parcelas em Atraso](https://github.com/user-attachments/assets/a71ab321-59ff-4150-a2eb-c8247c22dc40)

🔸 **Resultado**: Quantidade total de clientes inadimplentes: **18 clientes**

![Total de Inadimplentes](https://github.com/user-attachments/assets/cd1dbea2-7f73-4dc3-a549-be45cbd27b90)

---

### 3. **Média de Dias de Atraso**
🔸 **Resultado**: A média de dias de atraso das parcelas é de **7,9 dias**.

![Média de Dias de Atraso](https://github.com/user-attachments/assets/fb5c13ba-11a1-44d3-8968-f9eaeedf1c28)

---

### 4. **Segmentação por Faixa Etária**
🔸 **Resultado**: Quantidade de inadimplentes distribuída por faixa etária.

![Segmentação por Faixa Etária](https://github.com/user-attachments/assets/d9aa3bf5-e82d-4108-8902-9e1a7395854b)

---

### 5. **Histórico de Pagamentos por Cliente**
🔸 **Resultado**: Histórico completo de pagamentos por cliente e empréstimo.

![Histórico de Pagamentos](https://github.com/user-attachments/assets/e52766b3-6e0e-4ee7-9146-eb4f26cb3d1a)

---

## 🛠️ Ferramentas Utilizadas
- **SQLite Online** – [Acessar](https://sqliteonline.com/)
- **SQL** para manipulação e análise dos dados
- **CSV** como fonte de dados simulados

---

## 📌 Considerações Finais

Este projeto simula um cenário real de crédito, aplicando conceitos de análise de dados para entender o comportamento de pagamento dos clientes, identificar riscos e segmentar perfis.
