import streamlit as st
import requests
import pandas as pd

# Configuração da URL da API
API_URL = "http://car_api:5000/cars"

def get_cars():
    response = requests.get(API_URL)
    if response.status_code == 200:
        return response.json()
    else:
        st.error("Erro ao carregar os dados dos carros")
        return []

def add_car(make, model, year):
    car_data = {"make": make, "model": model, "year": year}
    response = requests.post(API_URL, json=car_data)
    if response.status_code == 201:
        st.success("Carro adicionado com sucesso!")
    else:
        st.error("Erro ao adicionar o carro")

# Configuração da interface do Streamlit
st.title("Gerenciamento de Carros")

page = st.sidebar.selectbox("Selecione a página", ["Ver Carros", "Adicionar Carro"])

if page == "Ver Carros":
    st.header("Lista de Carros")
    cars = get_cars()
    if cars:
        df = pd.DataFrame(cars)
        st.dataframe(df)

elif page == "Adicionar Carro":
    st.header("Adicionar um Novo Carro")
    make = st.text_input("Marca")
    model = st.text_input("Modelo")
    year = st.number_input("Ano", min_value=1886, max_value=2024, step=1)
    if st.button("Adicionar Carro"):
        add_car(make, model, year)
