using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace datakam.ValueObjects
{
    public class Document
    {
        public static string SLUG = "Slug";
        public static string TITLE = "Title";
        public static string IDENTIFIER = "Identifier";
        public static string BODY = "Body";
        public static string PUBLISH = "Publish";
        public static string FILTREVISUEL = "FiltreVisuel";
        public static string LANGUE = "Langue";
        public static string NIVEAU = "Niveau";
        
        public string Topic { get; set; }
        public string DocumentID { get; set; }
        public string UserID { get; set; }
        public List<string> Tags { get; set; }
        public int Score { get; set; }
        public int Version { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
        public string Slug { get; set; }
        public string Title { get; set; }
        public string Identifier { get; set; }
        public string Body { get; set; }
        public Boolean Publish { get; set; }
        public int FiltreVisuel { get; set; }
        public int Langue { get; set; }
        public int Niveau { get; set; }
        public List<Media> Media { get; set; }
    }
}