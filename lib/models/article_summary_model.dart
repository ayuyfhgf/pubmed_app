class ArticleSummaryModel {
  Header? header;
  Result? result;

  ArticleSummaryModel({this.header, this.result});

  ArticleSummaryModel.fromJson(Map<String, dynamic> json) {
    header =
        json['header'] != null ? new Header.fromJson(json['header']) : null;
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.header != null) {
      data['header'] = this.header!.toJson();
    }
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Header {
  String? type;
  String? version;

  Header({this.type, this.version});

  Header.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['version'] = this.version;
    return data;
  }
}

class Result {
  Data? data;
  List<dynamic>? uids;

  Result({this.data, this.uids});

  Result.fromJson(Map<String, dynamic> json) {
    uids = json['uids'].cast<String>();
    data = json[uids![0]] != null ? new Data.fromJson(json[uids![0]]) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data[uids![0]] = this.data!.toJson();
    }
    data['uids'] = this.uids;
    return data;
  }
}

class Data {
  String? uid;
  String? pubdate;
  String? epubdate;
  String? source;
  List<Authors>? authors;
  String? lastauthor;
  String? title;
  String? sorttitle;
  String? volume;
  String? issue;
  String? pages;
  List<dynamic>? lang;
  String? nlmuniqueid;
  String? issn;
  String? essn;
  List<dynamic>? pubtype;
  String? recordstatus;
  String? pubstatus;
  List<Articleids>? articleids;
  List<History>? history;
  List<dynamic>? references;
  List<dynamic>? attributes;
  dynamic? pmcrefcount;
  String? fulljournalname;
  String? elocationid;
  String? doctype;
  List<dynamic>? srccontriblist;
  String? booktitle;
  String? medium;
  String? edition;
  String? publisherlocation;
  String? publishername;
  String? srcdate;
  String? reportnumber;
  String? availablefromurl;
  String? locationlabel;
  List<dynamic>? doccontriblist;
  String? docdate;
  String? bookname;
  String? chapter;
  String? sortpubdate;
  String? sortfirstauthor;
  String? vernaculartitle;

  Data(
      {this.uid,
      this.pubdate,
      this.epubdate,
      this.source,
      this.authors,
      this.lastauthor,
      this.title,
      this.sorttitle,
      this.volume,
      this.issue,
      this.pages,
      this.lang,
      this.nlmuniqueid,
      this.issn,
      this.essn,
      this.pubtype,
      this.recordstatus,
      this.pubstatus,
      this.articleids,
      this.history,
      this.references,
      this.attributes,
      this.pmcrefcount,
      this.fulljournalname,
      this.elocationid,
      this.doctype,
      this.srccontriblist,
      this.booktitle,
      this.medium,
      this.edition,
      this.publisherlocation,
      this.publishername,
      this.srcdate,
      this.reportnumber,
      this.availablefromurl,
      this.locationlabel,
      this.doccontriblist,
      this.docdate,
      this.bookname,
      this.chapter,
      this.sortpubdate,
      this.sortfirstauthor,
      this.vernaculartitle});

  Data.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    pubdate = json['pubdate'];
    epubdate = json['epubdate'];
    source = json['source'];
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(new Authors.fromJson(v));
      });
    }
    lastauthor = json['lastauthor'];
    title = json['title'];
    sorttitle = json['sorttitle'];
    volume = json['volume'];
    issue = json['issue'];
    pages = json['pages'];
    lang = json['lang'].cast<String>();
    nlmuniqueid = json['nlmuniqueid'];
    issn = json['issn'];
    essn = json['essn'];
    pubtype = json['pubtype'].cast<String>();
    recordstatus = json['recordstatus'];
    pubstatus = json['pubstatus'];
    if (json['articleids'] != null) {
      articleids = <Articleids>[];
      json['articleids'].forEach((v) {
        articleids!.add(new Articleids.fromJson(v));
      });
    }
    if (json['history'] != null) {
      history = <History>[];
      json['history'].forEach((v) {
        history!.add(new History.fromJson(v));
      });
    }
    if (json['references'] != null) {
      references = [];
      json['references'].forEach((v) {
        references!.add(v);
      });
    }
    attributes = json['attributes'].cast<String>();
    pmcrefcount = json['pmcrefcount'];
    fulljournalname = json['fulljournalname'];
    elocationid = json['elocationid'];
    doctype = json['doctype'];
    if (json['srccontriblist'] != null) {
      srccontriblist = [];
      json['srccontriblist'].forEach((v) {
        srccontriblist!.add(v);
      });
    }
    booktitle = json['booktitle'];
    medium = json['medium'];
    edition = json['edition'];
    publisherlocation = json['publisherlocation'];
    publishername = json['publishername'];
    srcdate = json['srcdate'];
    reportnumber = json['reportnumber'];
    availablefromurl = json['availablefromurl'];
    locationlabel = json['locationlabel'];
    if (json['doccontriblist'] != null) {
      doccontriblist = [];
      json['doccontriblist'].forEach((v) {
        doccontriblist!.add(v);
      });
    }
    docdate = json['docdate'];
    bookname = json['bookname'];
    chapter = json['chapter'];
    sortpubdate = json['sortpubdate'];
    sortfirstauthor = json['sortfirstauthor'];
    vernaculartitle = json['vernaculartitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['pubdate'] = this.pubdate;
    data['epubdate'] = this.epubdate;
    data['source'] = this.source;
    if (this.authors != null) {
      data['authors'] = this.authors!.map((v) => v.toJson()).toList();
    }
    data['lastauthor'] = this.lastauthor;
    data['title'] = this.title;
    data['sorttitle'] = this.sorttitle;
    data['volume'] = this.volume;
    data['issue'] = this.issue;
    data['pages'] = this.pages;
    data['lang'] = this.lang;
    data['nlmuniqueid'] = this.nlmuniqueid;
    data['issn'] = this.issn;
    data['essn'] = this.essn;
    data['pubtype'] = this.pubtype;
    data['recordstatus'] = this.recordstatus;
    data['pubstatus'] = this.pubstatus;
    if (this.articleids != null) {
      data['articleids'] = this.articleids!.map((v) => v.toJson()).toList();
    }
    if (this.history != null) {
      data['history'] = this.history!.map((v) => v.toJson()).toList();
    }
    if (this.references != null) {
      data['references'] = this.references;
    }
    data['attributes'] = this.attributes;
    data['pmcrefcount'] = this.pmcrefcount;
    data['fulljournalname'] = this.fulljournalname;
    data['elocationid'] = this.elocationid;
    data['doctype'] = this.doctype;
    if (this.srccontriblist != null) {
      data['srccontriblist'] = this.srccontriblist;
    }
    data['booktitle'] = this.booktitle;
    data['medium'] = this.medium;
    data['edition'] = this.edition;
    data['publisherlocation'] = this.publisherlocation;
    data['publishername'] = this.publishername;
    data['srcdate'] = this.srcdate;
    data['reportnumber'] = this.reportnumber;
    data['availablefromurl'] = this.availablefromurl;
    data['locationlabel'] = this.locationlabel;
    if (this.doccontriblist != null) {
      data['doccontriblist'] = this.doccontriblist;
    }
    data['docdate'] = this.docdate;
    data['bookname'] = this.bookname;
    data['chapter'] = this.chapter;
    data['sortpubdate'] = this.sortpubdate;
    data['sortfirstauthor'] = this.sortfirstauthor;
    data['vernaculartitle'] = this.vernaculartitle;
    return data;
  }
}

class Authors {
  String? name;
  String? authtype;
  String? clusterid;

  Authors({this.name, this.authtype, this.clusterid});

  Authors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    authtype = json['authtype'];
    clusterid = json['clusterid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['authtype'] = this.authtype;
    data['clusterid'] = this.clusterid;
    return data;
  }
}

class Articleids {
  String? idtype;
  dynamic? idtypen;
  String? value;

  Articleids({this.idtype, this.idtypen, this.value});

  Articleids.fromJson(Map<String, dynamic> json) {
    idtype = json['idtype'];
    idtypen = json['idtypen'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idtype'] = this.idtype;
    data['idtypen'] = this.idtypen;
    data['value'] = this.value;
    return data;
  }
}

class History {
  String? pubstatus;
  String? date;

  History({this.pubstatus, this.date});

  History.fromJson(Map<String, dynamic> json) {
    pubstatus = json['pubstatus'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pubstatus'] = this.pubstatus;
    data['date'] = this.date;
    return data;
  }
}
