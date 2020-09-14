using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            //Inicijalno jas izbiram da ima 3 shalteri.

            Console.WriteLine("Vnesete broj na kvarteti: ");
            string line;

            int vreme;
            line = Console.ReadLine();
            vreme = Convert.ToInt32(line); //doagja po 1 klient na 15 minuti, promenlivata vreme ni prikazuva kolku quarters ke imame

            int prodadeniKartiBroj1 = 0;
            int prodadeniKartiBroj2 = 0;
            int prodadeniKartiBroj3 = 0;

            int promet1= 0;
            int promet2 = 0;
            int promet3 = 0;

            int karta = 0;

            for (int i = vreme; i > 0; i--)
            {

                Console.WriteLine("Zdravo! Dobredojdovte vo turistichkata agencija \"World\" ");
                Console.WriteLine("Izberete broj od 1 do 3. Toj broj ke go pretstavuva brojot na shalter na koj sakate da bidete usluzheni.");
                line = Console.ReadLine();
                int brojShalter = Convert.ToInt32(line);
                //  Console.WriteLine(brojShalter);

                Console.WriteLine("Dobredojdovte vo shalter broj " + brojShalter + "!");
                Console.WriteLine("Ve molam vnesete gi vashite lichni informacii vo sledniov redosled: ");
                Console.WriteLine("Ime");
                Console.WriteLine("Prezime");
                Console.WriteLine("Vozrast");
                Console.WriteLine("Pozhelna destinacija: ");

                string ime = Console.ReadLine();
                string prezime = Console.ReadLine();
                line = Console.ReadLine();
                int godini = Convert.ToInt32(line);
                string destinacija = Console.ReadLine();
                int len = destinacija.Length;
                karta = 2000 * len;

                if (brojShalter == 1)
                {
                    prodadeniKartiBroj1 += 1;
                    promet1 += karta;
                    
                } else if (brojShalter == 2)
                {
                    prodadeniKartiBroj2++;
                    promet2 += karta;
                } else if (brojShalter == 3)
                {
                    prodadeniKartiBroj3++;
                    promet3 += karta;
                } else
                {
                    Console.WriteLine("Ne postoi takov shalter. Ve molam obidete se povtorno!");
                    break;
                }

                

            }

            Console.WriteLine("Broj na prodadeni karti na shalter broj 1: " + prodadeniKartiBroj1);
            Console.WriteLine("Broj na prodadeni karti na shalter broj 2: " + prodadeniKartiBroj2);
            Console.WriteLine("Broj na prodadeni karti na shalter broj 3: " + prodadeniKartiBroj3);
            Console.WriteLine("Promet na shalter broj 1: " + promet1);
            Console.WriteLine("Promet na shalter broj2: " + promet2);
            Console.WriteLine("Promet na shalter broj 3: " + promet3);
            int vkupno = promet1 + promet2 + promet3;
            Console.WriteLine("Vkupen promet na agencija: " + vkupno);
            
        }
    }
}
