# phekb, 2024.

import sys, csv, re

codes = [{"code":"44826868","system":"ICD10CM"},{"code":"44826868","system":"ICD10CM"},{"code":"37395590","system":"ICD10CM"},{"code":"4116150","system":"ICD10CM"},{"code":"4116151","system":"ICD10CM"},{"code":"4179378","system":"ICD10CM"},{"code":"4116150","system":"ICD10CM"},{"code":"4116151","system":"ICD10CM"},{"code":"4179378","system":"ICD10CM"},{"code":"37395590","system":"ICD10CM"},{"code":"44826868","system":"ICD10CM"},{"code":"44826868","system":"ICD10CM"},{"code":"37395590","system":"ICD10CM"},{"code":"4116150","system":"ICD10CM"},{"code":"4116151","system":"ICD10CM"},{"code":"4179378","system":"ICD10CM"},{"code":"4116150","system":"ICD10CM"},{"code":"4116151","system":"ICD10CM"},{"code":"4179378","system":"ICD10CM"},{"code":"37395590","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rheumatoid-arthritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rheumatoid-arthritis---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rheumatoid-arthritis---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rheumatoid-arthritis---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
