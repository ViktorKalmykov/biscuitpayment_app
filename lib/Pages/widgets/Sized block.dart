Container _reportCell({
  bool isSavings,
  String title,
  String deposit,
  String rate,
  int progress,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
    decoration: BoxDecoration(
      color: isSavings ? Colors.white : _secondaryColor,
      borderRadius: BorderRadius.circular(30),
      border: isSavings
          ? Border.all(color: _primaryColor.withOpacity(0.1), width: 2)
          : null,
      boxShadow: isSavings
          ? []
          : [
        BoxShadow(
          color: _secondaryColor.withOpacity(0.4),
          offset: Offset(0, 8),
          blurRadius: 10,
        ),
      ],
    ),
    child: Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                value: progress / 100,
                strokeWidth: 6,
                backgroundColor: isSavings
                    ? _primaryColor.withOpacity(0.2)
                    : _primaryColor.withOpacity(0.1),
                valueColor: AlwaysStoppedAnimation<Color>(
                    isSavings ? _secondaryColor : Colors.white),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              alignment: Alignment.center,
              child: Text(
                progress.toString() + '%',
                style: TextStyle(
                  color: isSavings ? _primaryColor : Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: isSavings ? _primaryColor : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                _reportInnerCell(
                  isSavings: isSavings,
                  title: 'Deposit',
                  value: deposit,
                ),
                SizedBox(
                  width: 24,
                ),
                _reportInnerCell(
                  isSavings: isSavings,
                  title: 'Rate',
                  value: rate,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}