from faker import Faker

fake = Faker("pt_BR")

def generate_words(qtd=5):
    return " ".join(fake.words(qtd))
