using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InsuranceLetters.CustomTO
{
    public class CTAResponseTO
    {
        public CTAResponseTO(CTATackingTO parent, List<CTATackingTO> children,string agency,string bin)
        {
            this.parent = parent;
            this.children = children;
            this.agency = agency;
            this.bin = bin;
        }
        
        public CTATackingTO parent;
        public List<CTATackingTO> children;
        public string agency;
        public string bin;
    }
}