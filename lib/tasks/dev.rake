namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) } 
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }        
      %x(rails dev:add_brands)     
      %x(rails dev:add_cars)     
    else
      puts "Você não está em ambiente de desenvolvimento!" 
    end    
  end

  desc "Cadastra os carros"
  task add_cars: :environment do
    show_spinner("Cadastrando carros...") do
      cars = [
              { 
                description: "Volkswagen Beetle",
                year: 1970,
                url_image: "https://bringatrailer.com/wp-content/uploads/2022/08/1970_volkswagen_beetle_dsc6386-25206.jpg?fit=940%2C626", 
                brand: Brand.find_by(brand_name: 'Volkswagen')
              },     
              {
                description: "Fiat Uno Turbo",
                year: 1990,
                url_image: "https://bringatrailer.com/wp-content/uploads/2022/12/1990_fiat_tempra_CarCave_FIAT_Uno_Grey-5177-26179.jpg?fit=1200%2C800",
                brand: Brand.find_by(brand_name: 'Fiat')  
              },
              {
                description: "Honda Civic Si",
                year: 2005,
                url_image: "https://bringatrailer.com/wp-content/uploads/2022/07/2005_honda_civic_dsf0232-32088.jpg?w=620&resize=620%2C413",
                brand: Brand.find_by(brand_name: 'Honda')          
              },
              {
                description: "Toyota Hilux Double Cab 4x4 5-Speed",
                year: 1998,
                url_image: "https://bringatrailer.com/wp-content/uploads/2024/03/1998_toyota_hilux_DSC00951-26252-scaled.jpg?fit=2048%2C1365",
                brand: Brand.find_by(brand_name: 'Toyota')          
              },
              {
                description: "Volkswagen Golf Alltrack SEL 6-Speed",
                year: 2019,
                url_image: "https://bringatrailer.com/wp-content/uploads/2023/09/2019_volkswagen_golf-alltrack_IMG_1282-96040-scaled.jpeg?fit=2048%2C1536",
                brand: Brand.find_by(brand_name: 'Volkswagen')         
              },         
            ]   

      cars.each do |car|
        Car.find_or_create_by!(car)  
      end
    end  
  end
  
  desc "Cadastra as marcas"
  task add_brands: :environment do
    show_spinner("Cadastrando marcas...") do
      brands = [
        {brand_name: "Volkswagen"},
        {brand_name: "Fiat"},
        {brand_name: "Honda"},
        {brand_name: "Toyota"}
      ]

      brands.each do |brand|
        Brand.find_or_create_by!(brand)
      end
    end    
  end  

  
  private

  def show_spinner(msg_start, msg_end = "Concluído")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin 
    yield
    spinner.success("(#{msg_end})")    
  end  
end
