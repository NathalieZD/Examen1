class ListarLibros{
    int id;
    int Year;
    String? Title;
    String? Handle;
    String? Publisher;
    String? ISBN;
    int? Pages;
    String? notes;



    ListarLibros({
        required this.id,
        required this.Year,
        this.Title,
        this.Handle,
        this. Publisher,
        this.ISBN,
        this.Pages,
        this. notes
    });

    factory ListarLibros.fromJson(Map<String, dynamic> json) => ListarLibros(
        id: json["id"],
        Year: json["Year"],
        Title: json["Title"],
        Handle: json["Handle"],
        Publisher: json["Publiser"],
        ISBN: json["ISMN"],
        Pages: json["pages"],
        notes: json['pages'],
    );
}