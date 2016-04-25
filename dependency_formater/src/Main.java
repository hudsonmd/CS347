/**
 * Created by Hudson on 1/4/2016.
 */
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Main {

    /* format of entity.txt 

        first line is object name 
        2nd is collection name 
        each subsequent line should be column name
        
        ex.
        Dog
        P1_REST_RESULTS
        dog_id
        name

    */
    public static void main(String args[]) throws FileNotFoundException{
            File file = new File("dependency_formater/src/dependencies.txt");
            Scanner inFile = new Scanner(file);
            PrintWriter writer = new PrintWriter(inFile.nextLine()+".sql");
            ArrayList<String> cols = new ArrayList<String>();
            String query = "Select ";
            String joins = "\nfrom apex_collections c";
            String cond = "\nwhere c.collection_name='"+inFile.nextLine()+"' ";

            while (inFile.hasNext()) {
                cols.add(inFile.nextLine());
            }

            for(int i = 0; i<cols.size(); i++) {
                if(cols.get(i).length()>0) {
                    if(i>0)
                        query+=",\n";
                    query+="j"+i+"."+cols.get(i);
                    joins+=",\njson_table(c.clob001, '$."+cols.get(i)+"[*]' COLUMNS rid for ordinality, "+cols.get(i)+" varchar2(30) path '$') j"+i+" ";
                    cond+=" and \n j0.rid=j"+i+".rid";
                }
            }
            query+=joins+""+cond;
            writer.println(query);

            inFile.close();
            writer.close();
    }
}
