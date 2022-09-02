# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# a1 = Apartment.create(number: 4109, tenant_id: t1.id)
# a2 = Apartment.create(number: 1107, tenant_id: t2.id)
# a3 = Apartment.create(number: 2409, tenant_id: t3.id)
# a4 = Apartment.create(number: 1110, tenant_id: t6.id)
# a5 = Apartment.create(number: 7103, tenant_id: t7.id)
# a5 = Apartment.create(number: 6103, tenant_id: t1.id)

a1 = Apartment.create(number: 4109)
a2 = Apartment.create(number: 1107)
a3 = Apartment.create(number: 2409)
a4 = Apartment.create(number: 1110)
a5 = Apartment.create(number: 7103)
a5 = Apartment.create(number: 6103)

t1 = Tenant.create(name: "Robbin Miller", age: 29, apartment_id: a1.id)
t2 = Tenant.create(name: "Justin Cobb", age: 37, apartment_id: a3.id)
t3 = Tenant.create(name: "Chris Hitt", age: 19, apartment_id: a4.id)
t4 = Tenant.create(name: "Rehna Scwhatsky", age: 35, apartment_id: a3.id)
t5 = Tenant.create(name: "Timber Care", age: 40, apartment_id: a2.id)
t6 = Tenant.create(name: "Jen Scott", age: 21, apartment_id: a1.id)
t7 = Tenant.create(name: "Bobbie Harry", age: 29, apartment_id: a5.id)
# t8 = Tenant.create(name: "Reha bronsky", age: 29)



Lease.create(apartment_id: a1.id, tenant_id: t1.id, rent: 1200)
Lease.create(apartment_id: a2.id, tenant_id: t2.id, rent: 2200)
Lease.create(apartment_id: a3.id, tenant_id: t3.id, rent: 1000)
Lease.create(apartment_id: a4.id, tenant_id: t4.id, rent: 3200)
Lease.create(apartment_id: a5.id, tenant_id: t5.id, rent: 4200)
Lease.create(apartment_id: a3.id, tenant_id: t4.id, rent: 5020)
Lease.create(apartment_id: a4.id, tenant_id: t1.id, rent: 1100)
