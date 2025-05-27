from sentence_transformers import SentenceTransformer, util

# Inisialisasi model hanya sekali saat file diimpor
model = SentenceTransformer('all-MiniLM-L6-v2')

def get_skill_recommendations(input_text, df, top_k=3):
    """
    Menghitung kemiripan antara input trainee dan deskripsi kursus.

    Parameters:
        input_text (str): teks dari trainee (bisa berupa minat, skill, atau deskripsi diri).
        df (pd.DataFrame): dataframe berisi kolom 'description' dan 'title'.
        top_k (int): jumlah rekomendasi teratas.

    Returns:
        List[Dict]: Daftar rekomendasi kursus dengan skor tertinggi.
    """
    if df.empty or 'description' not in df.columns or 'title' not in df.columns:
        return []

    # Encode input trainee
    trainee_embedding = model.encode(input_text, convert_to_tensor=True)

    # Encode semua deskripsi kursus
    course_texts = df['description'].tolist()
    course_titles = df['title'].tolist()
    course_embeddings = model.encode(course_texts, convert_to_tensor=True)

    # Hitung cosine similarity
    cosine_scores = util.pytorch_cos_sim(trainee_embedding, course_embeddings)

    # Ambil rekomendasi teratas
    top_results = cosine_scores[0].topk(top_k)

    rekomendasi = []
    for score, idx in zip(top_results[0], top_results[1]):
        rekomendasi.append({
            'title': course_titles[idx],
            'score': round(score.item(), 4)
        })

    return rekomendasi
