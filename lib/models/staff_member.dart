class StaffMember {
  final String id;
  final String name;
  final String email;
  final String biography;
  final List<String> researchAreas;

  const StaffMember({
    required this.id,
    required this.name,
    required this.email,
    required this.biography,
    required this.researchAreas,
  });
}