#ifndef V2PROVINCE_H_
#define V2PROVINCE_H_

#include <string>
#include <vector>
#include <map>
#include "Parsers/Object.h"
#include "Date.h"

class V2Province {
	public:
		void				init(Object* obj);
		int					getNum();
		void				setOwner(string);
		string				getOwner();
		vector<string>		getCores();
		void				addCore(string);
		void				removeCore(string);
		int					getPopulation();
		int					getInfra() const { return infrastructureLevel; };
		int					getFort() const { return fortLevel; };
		int					getNavalBase() const { return navalBaseLevel; };

	private:
		int				num;
		string			name;
		string			owner;
		//controller
		vector<string>	cores;
		int				infrastructureLevel;
		int				fortLevel;
		int				navalBaseLevel;
};


#endif // V2PROVINCE_H_