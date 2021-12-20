class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "BTC",
    date: "01-03-2021",
    size: "3,100 USD",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "ETH",
    date: "27-02-2021",
    size: "1,200 USD",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Doge",
    date: "23-02-2021",
    size: "200 USD",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "LTC",
    date: "21-02-2021",
    size: "100 USD",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Deer NFT",
    date: "23-02-2021",
    size: "60 USD",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "SKL NFT",
    date: "25-02-2021",
    size: "40 USD",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "SPA NFT",
    date: "25-02-2021",
    size: "20 USD",
  ),
];
