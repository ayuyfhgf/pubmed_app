
class Article {
  final String pmid;
  final String title;
  final String source;
  final String pubDate;
  final String authors;
  final String doi;
  final String fullTextUrl;

  Article({
    required this.pmid,
    required this.title,
    required this.source,
    required this.pubDate,
    required this.authors,
    required this.doi,
    required this.fullTextUrl,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      pmid: json['uid'] ?? '',
      title: json['title'] ?? '',
      source: json['source'] ?? '',
      pubDate: json['pubdate'] ?? '',
      authors: json['authors'] != null
          ? (json['authors'] as List).map((a) => a['name']).join(', ')
          : '',
      doi: json['articleids'] != null
          ? (json['articleids'] as List)
              .firstWhere((id) => id['idtype'] == 'doi', orElse: () => {'value': ''})['value']
          : '',
      fullTextUrl: json['availablefromurl'] ?? '',
    );
  }
}
