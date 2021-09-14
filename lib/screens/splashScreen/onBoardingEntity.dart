class OnBoardingEntity {
  final String image;
  final String heading;
  final String description;

  OnBoardingEntity({this.image, this.heading, this.description});

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
        image: 'assets/images/onboard1.png',
        description: "WELCOME TO MINILIVE",
        heading: "NAMASTE"),
    OnBoardingEntity(
        image: 'assets/images/onboard2.png',
        description:
            "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipicsci velit...",
        heading: ""),
    OnBoardingEntity(
        image: 'assets/images/onboard3.png',
        description:
            "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipicsci velit...",
        heading: ""),
    // OnBoardingEntity(
    //     image: 'assets/girl.jpg',
    //     description: "Stream and download as much as you want, no extra fees.",
    //     heading: "Unlimited entertainment, one low price"),
  ];
}
