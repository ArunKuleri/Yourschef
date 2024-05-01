class OnboardingContent {
  String image;
  String title;
  String description;
  OnboardingContent(
      {required this.image, required this.title, required this.description});
  static List<OnboardingContent> contents = [
    OnboardingContent(
        image: 'assets/images/chef1.png',
        title: "Best chefs are available in the industry are available here",
        description:
            "Pick your favorate chefs from Yours, to make your events memorable"),
    OnboardingContent(
        image: "assets/images/chef2.png",
        title: "You can select from our top list ",
        description: "Easy at online the best chefs are at your door steps"),
    OnboardingContent(
        image: "assets/images/chef3.png",
        title: "We have the best people with us",
        description: "We will Deliver the right choice as per your taste")
  ];
}
