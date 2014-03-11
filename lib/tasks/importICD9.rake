
desc "Import ICD-9-CM codes from file"
# syntax: rake importICD9[short|long,public/icd9.txt]
task :importICD9, [:descrType,:file] => [:environment] do |t, args|

  #variables
  colsToExclude = ["id", "created_at", "updated_at"]

  start_time = Time.now
  counter = 0
  icd9dxes = []


  file = args.file
  descrType = args.descrType
  descrType.downcase! unless descrType.nil? 

  if descrType == 'short'
    colsToExclude << 'description_long'
  elsif descrType == 'long'
    colsToExclude << 'description_short'
  else
    puts "Description type [#{descrType}] must be 'short' or 'long'."
    return
  end

  puts "#{Time.now} - Starting import from #{file}"

  File.open(file, "r:ISO-8859-1").each do |line|
    if line.strip.blank?
      next
    end
    code = line[0..2].strip + '.' + line[3..4].strip
    code = code.force_encoding('UTF-8')
    descr = line[6..-1].strip.force_encoding('UTF-8')

    if code.nil? || code == '.' 
      next
    end

    icd9dx = Icd9dx.new( :code => code )
    if descrType == 'short'
      icd9dx.description_short = descr
    else
      icd9dx.description_long = descr
    end

    counter += 1
    icd9dxes << icd9dx
  end

  if icd9dxes.size
      puts "#{Time.now} - importing #{icd9dxes.size} ICD-9 codes..."
      Icd9dx.import icd9dxes, :validate => false, :on_duplicate_key_update => Icd9dx.column_names - colsToExclude
      icd9dxes = []
  end

  end_time = Time.now

  puts "#{counter} ICD-9 diagnoses imported #{((end_time - start_time) / 60).round(2)} minutes (#{( counter / (end_time - start_time)).round(2)} items/second)"


end



