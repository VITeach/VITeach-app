class Wish {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 15) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }
}