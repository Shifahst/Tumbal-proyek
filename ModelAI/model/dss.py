def nilai_harga(harga):
    if harga <= 3_000_000:
        return 1
    elif harga <= 5_000_000:
        return 0.75
    elif harga <= 7_000_000:
        return 0.50
    else:
        return 0.25

def nilai_rating(rating):
    if rating >= 9:
        return 1
    elif rating >= 7:
        return 0.75
    elif rating >= 5:
        return 0.50
    else:
        return 0.25

def nilai_pengalaman(pengalaman):
    if pengalaman > 10:
        return 1
    elif pengalaman >= 5:
        return 0.75
    else:
        return 0.50

def nilai_tingkat_kesulitan(tingkat):
    if tingkat == 'Pemula':
        return 1
    elif tingkat == 'Menengah':
        return 0.75
    else:
        return 0.50

def nilai_lokasi(lokasi):
    nilai_lokasi_map = {
        'Batam Center': 1,
        'Batu Aji': 0.805,
        'Batu Ampar': 0.537,
        'Belakang Padang': 0.537,
        'Bengkong': 0.537,
        'Bulang': 0.537,
        'Galang': 0.537,
        'Lubuk Baja': 0.537,
        'Nongsa': 0.537,
        'Segulung': 0.537,
        'Sei Beduk': 0.537,
        'Sekupang': 0.537
    }
    return nilai_lokasi_map.get(lokasi, 0.289)

def hitung_nilai_total(row, weights):
    return (
        nilai_harga(row['harga']) * weights[0] +
        nilai_rating(row['avg_rating']) * weights[1] +
        nilai_pengalaman(row['pengalaman_total_pelatih']) * weights[2] +
        nilai_tingkat_kesulitan(row['tingkat_kesulitan']) * weights[3] +
        nilai_lokasi(row['lokasi']) * weights[4]
    )
