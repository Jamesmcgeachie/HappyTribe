user_1 = User.create(
  first_name: "Margaret",
  last_name: "K",
  email: "mgt@kim.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_2 = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "john@doe.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_3 = User.create(
  first_name: "Greg",
  last_name: "Gregson",
  email: "gg@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_4 = User.create(
  first_name: "Grant",
  last_name: "Grantson",
  email: "ggg@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_5 = User.create(
  first_name: "Eric",
  last_name: "Ericson",
  email: "ee@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_6 = User.create(
  first_name: "Bryan",
  last_name: "Ericson",
  email: "be@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_7 = User.create(
  first_name: "Donald",
  last_name: "Ericson",
  email: "de@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_8 = User.create(
  first_name: "Stacey",
  last_name: "Ericson",
  email: "se@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
# Putting the org name in the variable name wasn't necessary, but was to quickly show
# in the seed file that these users are event coordinators
user_9_mount_sinai_coordinator = User.create(
  first_name: "Sally",
  last_name: "Sinai",
  email: "sally@mountsinai.com",
  password: "blah",
  password_confirmation: "blah",
  );
user_10_scott_mission_coordinator = User.create(
  first_name: "Scott",
  last_name: "Mason",
  email: "scott@scottmission.com",
  password: "blah",
  password_confirmation: "blah",
  );
user_11_postmedia_coordinator = User.create(
  first_name: "Peter",
  last_name: "Post",
  email: "peter@postmedia.com",
  password: "blah",
  password_confirmation: "blah",
  );