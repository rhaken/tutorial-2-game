### Apa saja pesan log yang dicetak pada panel Output?
![image](https://github.com/user-attachments/assets/fad02528-cc7f-47b9-854d-242a2683977b)
Pesan log yang dicetak pada panel output
- Platform initialized (muncul karena pada func _ready() terdapat perintah print("Platform initialized") func _ready ketika node memasuki scene tree untuk pertama kali)
- Reached objective! (dijelaskan dibawah)


### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
![image](https://github.com/user-attachments/assets/dde145f5-a8aa-41d1-abd0-86a5caf3214e)
Pesan log yang dicetak pada panel output
- Platform initialized (sama seperti sebelumnya penyebab kemunculanya)
- Reached objective! (dijelaskan dibawah)
- Reached objective! (dijelaskan dibawah)

### Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak karena scene ObjectiveArea memiliki memiliki koneksi signal body_entere yang berfungsi untuk mendeteksi apakah ada node yang memasuki
area tersebut yang diberi reciever method func _on_ObjectiveArea_body_entered(body: RigidBody2D): yang akan melakukan mengeprint print("Reached objective!") apabila terdapat RigidBody2D dengan body.name == "BlueShip"
memasuki area tersebut

### Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
Sprite digunakan untuk menampilkan gambar (texture) dalam game. Node ini memungkinkan Anda untuk mengatur gambar, posisi, skala, rotasi, serta memberikan efek animasi dasar.

### Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
- **RigidBody2D**: Digunakan untuk objek yang bergerak secara fisik dan dipengaruhi oleh gaya seperti gravitasi, dorongan, dan tabrakan.
- **StaticBody2D**: Digunakan untuk objek statis yang tidak bergerak. Objek ini bisa bertabrakan dengan RigidBody2D tetapi tidak akan terpengaruh oleh gaya seperti gravitasi, dorongan, dan tabrakan.

### Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Tidak ada yang berubah sebenarnya object blueship menjadi lebih berat tetapi karena yang bergerak platformnya yang merupakan staticbody(tidak terpengaruh fisik) maka object akan terlihat sama saja.

### Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Jika **Disabled** diaktifkan, StonePlatform tidak akan memiliki deteksi tabrakan, sehingga objek pesawat dapat melewatinya tanpa terhalang.

### Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
Memanipulasi Position, Rotation, dan Scale pada BlueShip akan mengubah lokasi, orientasi, dan ukuran visualnya di Viewport.

### Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Posisi StonePlatform dan StonePlatform2 di Inspector terlihat tidak sesuai karena mereka adalah child dari PlatformBlue, sehingga posisinya relatif terhadap parent, bukan terhadap scene utama. Jika PlatformBlue dipindahkan, maka childnya juga ikut beripindah, tetapi ketika child nya dipindah sendiri PlatformBlue tidak ikut berpindah.
