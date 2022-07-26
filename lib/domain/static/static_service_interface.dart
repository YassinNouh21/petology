abstract class StaticServiceInterface<Static> {
  Future<Static> getStaticById(String id);
  dynamic getListPetNeeds();
  Future<Static> getSecondSection();
  Future<Static> getFirstSection();
  Future<Static> getFooter();
}
