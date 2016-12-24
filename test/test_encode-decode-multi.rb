require './test/test_base.rb'

class TestBase58GMP < Test::Unit::TestCase
  MULTI_EXAMPLES = [
    {
      "data" => "adam@t1.foobar.com",
      "b58f" => "cLyvfgxMmJ4imn6MwxfEzb",
      "b58fp" => "cLyvfgxMmJ4imn6MwxfEzb",
      "b58g" => "BiWTEFVjKg3HKL5jUVEcXA",
      "b58gp" => "BiWTEFVjKg3HKL5jUVEcXA",
      "hex" => "5f4d4857d79df81230f2d785f7b7ed7c",
      "dec" => "126677933750746041262251363768011844988"
    },
    {
      "data" => "alexander@t2.foobar.com",
      "b58f" => "gCWkLkBYTJYgudgBCLPME4",
      "b58fp" => "gCWkLkBYTJYgudgBCLPME4",
      "b58g" => "FasJiJZupguFSCFZailjc3",
      "b58gp" => "FasJiJZupguFSCFZailjc3",
      "hex" => "7ea158248144a5e10be332bc375d06cb",
      "dec" => "168320475007389035659117543093603993291"
    },
    {
      "data" => "alice@t3.foobar.com",
      "b58f" => "jbvgmJ6M2f6yqG7BZjyG3V",
      "b58fp" => "jbvgmJ6M2f6yqG7BZjyG3V",
      "b58g" => "IATFKg5j1E5WOe6ZvIWe2r",
      "b58gp" => "IATFKg5j1E5WOe6ZvIWe2r",
      "hex" => "933bf7f8f22ad591defa4c801bd0c8c9",
      "dec" => "195707890373739749463188677027356002505"
    },
    {
      "data" => "andrew@t4.foobar.com",
      "b58f" => "doB64s8kjip3PpUXfPN5DT",
      "b58fp" => "doB64s8kjip3PpUXfPN5DT",
      "b58g" => "CMZ53Q7JIHN2lNqtElk4bp",
      "b58gp" => "CMZ53Q7JIHN2lNqtElk4bp",
      "hex" => "6455a66f436935076c5cca60fb630bc5",
      "dec" => "133367520506649976190886440990014639045"
    },
    {
      "data" => "anna@t5.foobar.com",
      "b58f" => "52Aa4kRyEQYYngM2ejsgUG",
      "b58fp" => "52Aa4kRyEQYYngM2ejsgUG",
      "b58g" => "41Y93JnWcmuuLFj1DIQFqe",
      "b58gp" => "41Y93JnWcmuuLFj1DIQFqe",
      "hex" => "209d590fa7dcbf3e8b5479f8e8468d1c",
      "dec" => "43352292846735302029449898208155569436"
    },
    {
      "data" => "annabel@t6.foobar.com",
      "b58f" => "uvFiDuVaBvRPZmpeMgfFZc",
      "b58fp" => "uvFiDuVaBvRPZmpeMgfFZc",
      "b58g" => "STdHbSr9ZTnlvKNDjFEdvB",
      "b58gp" => "STdHbSr9ZTnlvKNDjFEdvB",
      "hex" => "e6e4ac85abf748b8b58e6f906c878171",
      "dec" => "306909781879294918726215408864855556465"
    },
    {
      "data" => "anne@t7.foobar.com",
      "b58f" => "p2ixWDwJhR4rLk5Qp8vG3K",
      "b58fp" => "p2ixWDwJhR4rLk5Qp8vG3K",
      "b58g" => "N1HVsbUgGn3PiJ4mN7Te2h",
      "b58gp" => "N1HVsbUgGn3PiJ4mN7Te2h",
      "hex" => "ba70bfbc7c9a72324046288b7cfabe97",
      "dec" => "247821833337841958276065096398444084887"
    },
    {
      "data" => "anthony@t8.foobar.com",
      "b58f" => "cVTPsTPL3XGVGNfguAkKi9",
      "b58fp" => "cVTPsTPL3XGVGNfguAkKi9",
      "b58g" => "BrplQpli2terekEFSYJhH8",
      "b58gp" => "BrplQpli2terekEFSYJhH8",
      "hex" => "609ae116edf4f1249c376b5659339646",
      "dec" => "128410066670390748186526482267804767814"
    },
    {
      "data" => "arthur@t9.foobar.com",
      "b58f" => "s7MmQ3J7kJdmhs6Dh2iqe5",
      "b58fp" => "s7MmQ3J7kJdmhs6Dh2iqe5",
      "b58g" => "Q6jKm2g6JgCKGQ5bG1HOD4",
      "b58gp" => "Q6jKm2g6JgCKGQ5bG1HOD4",
      "hex" => "d3800575881701e3544d83fc218d67ce",
      "dec" => "281131831832370515091840921440803973070"
    },
    {
      "data" => "asher@t10.foobar.com",
      "b58f" => "3AQfYjm3ereVCbk6UiiDpm",
      "b58fp" => "3AQfYjm3ereVCbk6UiiDpm",
      "b58g" => "2YmEuIK2DPDraAJ5qHHbNK",
      "b58gp" => "2YmEuIK2DPDraAJ5qHHbNK",
      "hex" => "150f4e3d52d072ce1cca38669a59ef76",
      "dec" => "27993259250858023473538564221784682358"
    },
    {
      "data" => "atticus@t11.foobar.com",
      "b58f" => "9uNQDKegGRFxssber7iLyd",
      "b58fp" => "9uNQDKegGRFxssber7iLyd",
      "b58g" => "8SkmbhDFendVQQADP6HiWC",
      "b58gp" => "8SkmbhDFendVQQADP6HiWC",
      "hex" => "44ceccdf2796d594a3e2825e86eacd64",
      "dec" => "91461272157924102332612701657783520612"
    },
    {
      "data" => "august@t12.foobar.com",
      "b58f" => "opKe6gZux8XrkripZoDKvr",
      "b58fp" => "opKe6gZux8XrkripZoDKvr",
      "b58g" => "MNhD5FvSV7tPJPHNvMbhTP",
      "b58gp" => "MNhD5FvSV7tPJPHNvMbhTP",
      "hex" => "b579cbc7d106b1c0cf79b6255af8a8bf",
      "dec" => "241222668317196828789511828301388753087"
    },
    {
      "data" => "beatrice@t13.foobar.com",
      "b58f" => "47ZoJMfkKPjevMifcE9GMq",
      "b58fp" => "47ZoJMfkKPjevMifcE9GMq",
      "b58g" => "36vMgjEJhlIDTjHEBc8ejO",
      "b58gp" => "36vMgjEJhlIDTjHEBc8ejO",
      "hex" => "19453f68d7dba349910e6421d335246a",
      "dec" => "33590254476200534436577819738796008554"
    },
    {
      "data" => "benjamin@t14.foobar.com",
      "b58f" => "d6nUszRtqn8ZD7ri3AokAP",
      "b58fp" => "d6nUszRtqn8ZD7ri3AokAP",
      "b58g" => "C5LqQXnROL7vb6PH2YMJYl",
      "b58gp" => "C5LqQXnROL7vb6PH2YMJYl",
      "hex" => "61ede1c230a879aec51894387453ad1f",
      "dec" => "130170268874092897852157875204060851487"
    },
    {
      "data" => "butch@t15.foobar.com",
      "b58f" => "m3DKJwLfHtgm1rGuSgs23s",
      "b58fp" => "m3DKJwLfHtgm1rGuSgs23s",
      "b58g" => "K2bhgUiEfRFK0PeSoFQ12Q",
      "b58gp" => "K2bhgUiEfRFK0PeSoFQ12Q",
      "hex" => "a2558709197073b06452b396d26596f2",
      "dec" => "215779019396354858626060097154225379058"
    },
    {
      "data" => "caroline@t16.foobar.com",
      "b58f" => "8WbKULXo6kwtsHDCHMRDn3",
      "b58fp" => "8WbKULXo6kwtsHDCHMRDn3",
      "b58g" => "7sAhqitM5JURQfbafjnbL2",
      "b58gp" => "7sAhqitM5JURQfbafjnbL2",
      "hex" => "4040c3735075843f57f7694710ce4d90",
      "dec" => "85406862935193115677662879897353080208"
    },
    {
      "data" => "charles@t17.foobar.com",
      "b58f" => "p6kBDZhrBNCwQUDyMWAu3J",
      "b58fp" => "p6kBDZhrBNCwQUDyMWAu3J",
      "b58g" => "N5JZbvGPZkaUmqbWjsYS2g",
      "b58gp" => "N5JZbvGPZkaUmqbWjsYS2g",
      "hex" => "bb00fefcafbe5757ee416726967870de",
      "dec" => "248570806963705534444293703759165944030"
    },
    {
      "data" => "charlotte@t18.foobar.com",
      "b58f" => "9zKZCLPy2ZM8VRxSY8eHh7",
      "b58fp" => "9zKZCLPy2ZM8VRxSY8eHh7",
      "b58g" => "8XhvailW1vj7rnVou7DfG6",
      "b58gp" => "8XhvailW1vj7rnVou7DfG6",
      "hex" => "457fc4092633b351d1a73ac9a5d0ade2",
      "dec" => "92380129487351829097873462645503340002"
    },
    {
      "data" => "christopher@t19.foobar.com",
      "b58f" => "89Zx7mhbQmGektaWbLTD83",
      "b58fp" => "89Zx7mhbQmGektaWbLTD83",
      "b58g" => "78vV6KGAmKeDJR9sAipb72",
      "b58gp" => "78vV6KGAmKeDJR9sAipb72",
      "hex" => "39f160fade7f8ee290424c7c4bf501c4",
      "dec" => "77019306289869557855267295670159344068"
    },
    {
      "data" => "claire@t20.foobar.com",
      "b58f" => "jerxFmdFLZdiPTbtAE4RRW",
      "b58fp" => "jerxFmdFLZdiPTbtAE4RRW",
      "b58g" => "IDPVdKCdivCHlpARYc3nns",
      "b58gp" => "IDPVdKCdivCHlpARYc3nns",
      "hex" => "93a4e8853290aa41fe95cfc77b290c0c",
      "dec" => "196252768137205146461410904743885736972"
    },
    {
      "data" => "clementine@t21.foobar.com",
      "b58f" => "49mAPwbkPzywjJDjH8fkji",
      "b58fp" => "49mAPwbkPzywjJDjH8fkji",
      "b58g" => "38KYlUAJlXWUIgbIf7EJIH",
      "b58gp" => "38KYlUAJlXWUIgbIf7EJIH",
      "hex" => "19760fc17f1bf1e8de8b9e495f30b911",
      "dec" => "33843710490447806141278790173634640145"
    },
    {
      "data" => "daisy@t22.foobar.com",
      "b58f" => "oTcUfyaptjpspnRjisQV4d",
      "b58fp" => "oTcUfyaptjpspnRjisQV4d",
      "b58g" => "MpBqEW9NRINQNLnIHQmr3C",
      "b58gp" => "MpBqEW9NRINQNLnIHQmr3C",
      "hex" => "b94f5124b8c256977d0e943a80d3c1ee",
      "dec" => "246319016456605616502798623965097214446"
    },
    {
      "data" => "daniel@t23.foobar.com",
      "b58f" => "e5erPbsJTQRZJ21QAzkM3v",
      "b58fp" => "e5erPbsJTQRZJ21QAzkM3v",
      "b58g" => "D4DPlAQgpmnvg10mYXJj2T",
      "b58gp" => "D4DPlAQgpmnvg10mYXJj2T",
      "hex" => "69de103fb70a88fd926d3a2fa68fac2d",
      "dec" => "140721959026587288188734931330791353389"
    },
    {
      "data" => "dashiell@t24.foobar.com",
      "b58f" => "fU7jgzihYccLdbRkD4p4Dw",
      "b58fp" => "fU7jgzihYccLdbRkD4p4Dw",
      "b58g" => "Eq6IFXHGuBBiCAnJb3N3bU",
      "b58gp" => "Eq6IFXHGuBBiCAnJb3N3bU",
      "hex" => "78a6824f3574f828a9cf2977c03c0414",
      "dec" => "160371923761524112291430837210897450004"
    },
    {
      "data" => "david@t25.foobar.com",
      "b58f" => "3gsB9Mcw1KEcX7rnfxCVWs",
      "b58fp" => "3gsB9Mcw1KEcX7rnfxCVWs",
      "b58g" => "2FQZ8jBU0hcBt6PLEVarsQ",
      "b58gp" => "2FQZ8jBU0hcBt6PLEVarsQ",
      "hex" => "125ad497714ed29898987bc073d747da",
      "dec" => "24397722510752230842485235424691701722"
    },
    {
      "data" => "delilah@t26.foobar.com",
      "b58f" => "czpj88sMnUqkcnCF8VjFnt",
      "b58fp" => "czpj88sMnUqkcnCF8VjFnt",
      "b58g" => "BXNI77QjLqOJBLad7rIdLR",
      "b58gp" => "BXNI77QjLqOJBLad7rIdLR",
      "hex" => "5dbe6fbd8fcf65cbd63d25b76497b499",
      "dec" => "124607006377214598729105640664629490841"
    },
    {
      "data" => "dexter@t27.foobar.com",
      "b58f" => "j4Q5Dtq6s37yzRZhbS5YC9",
      "b58fp" => "j4Q5Dtq6s37yzRZhbS5YC9",
      "b58g" => "I3m4bRO5Q26WXnvGAo4ua8",
      "b58gp" => "I3m4bRO5Q26WXnvGAo4ua8",
      "hex" => "924d5b8c2540d07cf97da2313351ab90",
      "dec" => "194468951045450884643816030770218249104"
    },
    {
      "data" => "diana@t28.foobar.com",
      "b58f" => "4agRLH5d8g8fwvfBAvNHU9",
      "b58fp" => "4agRLH5d8g8fwvfBAvNHU9",
      "b58g" => "39Fnif4C7F7EUTEZYTkfq8",
      "b58gp" => "39Fnif4C7F7EUTEZYTkfq8",
      "hex" => "1996e200a3fbd651633747566edb4a94",
      "dec" => "34014128298724055313755946604748819092"
    },
    {
      "data" => "dixie@t29.foobar.com",
      "b58f" => "gPaJj7frXSX7m25PRnA8MQ",
      "b58fp" => "gPaJj7frXSX7m25PRnA8MQ",
      "b58g" => "Fl9gI6EPtot6K14lnLY7jm",
      "b58gp" => "Fl9gI6EPtot6K14lnLY7jm",
      "hex" => "800f087a8dca6099c9b64225fd601e5e",
      "dec" => "170219239882341955684168725276498337374"
    },
    {
      "data" => "duke@t30.foobar.com",
      "b58f" => "7EUdabgtAcHwsj8AecAifR",
      "b58fp" => "7EUdabgtAcHwsj8AecAifR",
      "b58g" => "6cqC9AFRYBfUQI7YDBYHEn",
      "b58gp" => "6cqC9AFRYBfUQI7YDBYHEn",
      "hex" => "3605454263b41d4c50f662ddabe288e1",
      "dec" => "71805678002856270157912074219377821921"
    },
    {
      "data" => "edie@t31.foobar.com",
      "b58f" => "839e6nYnuoKeBA2fcFfjuk",
      "b58fp" => "839e6nYnuoKeBA2fcFfjuk",
      "b58g" => "728D5LuLSMhDZY1EBdEISJ",
      "b58gp" => "728D5LuLSMhDZY1EBdEISJ",
      "hex" => "38fc8706fd0863664d8dc8d1e3374a73",
      "dec" => "75747965251281381798891401441290177139"
    },
    {
      "data" => "edith@t32.foobar.com",
      "b58f" => "x5eCBLpMNnkVfdV2hewRZQ",
      "b58fp" => "x5eCBLpMNnkVfdV2hewRZQ",
      "b58g" => "V4DaZiNjkLJrECr1GDUnvm",
      "b58gp" => "V4DaZiNjkLJrECr1GDUnvm",
      "hex" => "fba2ac947136487946e0b0fd04746c3e",
      "dec" => "334480879368353836724733654160257608766"
    },
    {
      "data" => "edward@t33.foobar.com",
      "b58f" => "xoXUn5zuPWKmDbPKnyHmh6",
      "b58fp" => "xoXUn5zuPWKmDbPKnyHmh6",
      "b58g" => "VMtqL4XSlshKbAlhLWfKG5",
      "b58gp" => "VMtqL4XSlshKbAlhLWfKG5",
      "hex" => "fe401cdc367b9adb571fae2d5b8d913d",
      "dec" => "337956803282841135767437561261774967101"
    },
    {
      "data" => "eleanor@t34.foobar.com",
      "b58f" => "jPuNbfoin3kby2MDCd9yUd",
      "b58fp" => "jPuNbfoin3kby2MDCd9yUd",
      "b58g" => "IlSkAEMHL2JAW1jbaC8WqC",
      "b58gp" => "IlSkAEMHL2JAW1jbaC8WqC",
      "hex" => "98663307233fbf5741ed2bb503986994",
      "dec" => "202573304607273730186529031049551833492"
    },
    {
      "data" => "eliza@t35.foobar.com",
      "b58f" => "tpJVYe8ndsSdQDDXK6RcbD",
      "b58fp" => "tpJVYe8ndsSdQDDXK6RcbD",
      "b58g" => "RNgruD7LCQoCmbbth5nBAb",
      "b58gp" => "RNgruD7LCQoCmbbth5nBAb",
      "hex" => "ddf74eb16d39ec1e33e53f5c68e9390d",
      "dec" => "295043480477662250068945605391400122637"
    },
    {
      "data" => "elizabeth@t36.foobar.com",
      "b58f" => "d9JhheywJsX4cdbHHxvE1D",
      "b58fp" => "d9JhheywJsX4cdbHHxvE1D",
      "b58g" => "C8gGGDWUgQt3BCAffVTc0b",
      "b58gp" => "C8gGGDWUgQt3BCAffVTc0b",
      "hex" => "6265aba48bff6a189382111160b14cd5",
      "dec" => "130792246898421843383415346138501434581"
    },
    {
      "data" => "ella@t37.foobar.com",
      "b58f" => "wmnv7JjFZXTBdeto9UK51K",
      "b58fp" => "wmnv7JjFZXTBdeto9UK51K",
      "b58g" => "UKLT6gIdvtpZCDRM8qh40h",
      "b58gp" => "UKLT6gIdvtpZCDRM8qh40h",
      "hex" => "f5ca494988eb6cafaa7bc9df8d726bb3",
      "dec" => "326711189374659926314990846899291057075"
    },
    {
      "data" => "elvis@t38.foobar.com",
      "b58f" => "22UQqi4yQMptXqPQFRWA3m",
      "b58fp" => "22UQqi4yQMptXqPQFRWA3m",
      "b58g" => "11qmOH3WmjNRtOlmdnsY2K",
      "b58gp" => "11qmOH3WmjNRtOlmdnsY2K",
      "hex" => "85d716ae4f4719f5f4e11a21e7bcab0",
      "dec" => "11119007955451601810026446643300911792"
    },
    {
      "data" => "emily@t39.foobar.com",
      "b58f" => "99JVBHbh4yGMah1iuzYW6",
      "b58fp" => "199JVBHbh4yGMah1iuzYW6",
      "b58g" => "88grZfAG3Wej9G0HSXus5",
      "b58gp" => "088grZfAG3Wej9G0HSXus5",
      "hex" => "123561fd4f46f6968c529d8000e3ba9",
      "dec" => "1512705195038912935001636011726748585"
    },
    {
      "data" => "emma@t40.foobar.com",
      "b58f" => "iPTaT5CfzCkFZyhZn8ZCzM",
      "b58fp" => "iPTaT5CfzCkFZyhZn8ZCzM",
      "b58g" => "Hlp9p4aEXaJdvWGvL7vaXj",
      "b58gp" => "Hlp9p4aEXaJdvWGvL7vaXj",
      "hex" => "905ad969451d6f4920e5a21328c57f6f",
      "dec" => "191880547733527126653057434107188182895"
    },
    {
      "data" => "eve@t41.foobar.com",
      "b58f" => "4vtKxUhbUeVg2V23s97mnL",
      "b58fp" => "4vtKxUhbUeVg2V23s97mnL",
      "b58g" => "3TRhVqGAqDrF1r12Q86KLi",
      "b58gp" => "3TRhVqGAqDrF1r12Q86KLi",
      "hex" => "1c69165ef808f0a3792d579b2a173d6e",
      "dec" => "37764028789345448245656758818207907182"
    },
    {
      "data" => "faith@t42.foobar.com",
      "b58f" => "r6oLUF5wZA7LFvXuNibGc1",
      "b58fp" => "r6oLUF5wZA7LFvXuNibGc1",
      "b58g" => "P5Miqd4UvY6idTtSkHAeB0",
      "b58gp" => "P5Miqd4UvY6idTtSkHAeB0",
      "hex" => "cb35387289786ca11e8ed50e941ef9fe",
      "dec" => "270109619767333629615049083484043672062"
    },
    {
      "data" => "flora@t43.foobar.com",
      "b58f" => "x6iZQGGyxJAisWwHt8x2ek",
      "b58fp" => "x6iZQGGyxJAisWwHt8x2ek",
      "b58g" => "V5HvmeeWVgYHQsUfR7V1DJ",
      "b58gp" => "V5HvmeeWVgYHQsUfR7V1DJ",
      "hex" => "fbc91bc6ae838c5dc2c655d2637a6791",
      "dec" => "334680441976824284723803850626190436241"
    },
    {
      "data" => "florence@t44.foobar.com",
      "b58f" => "q42bQccuA357rAepcvYjCc",
      "b58fp" => "q42bQccuA357rAepcvYjCc",
      "b58g" => "O31AmBBSY246PYDNBTuIaB",
      "b58gp" => "O31AmBBSY246PYDNBTuIaB",
      "hex" => "c2c74a5e7baf2006559dedafd8b7526b",
      "dec" => "258905006641158426064910512587332342379"
    },
    {
      "data" => "frances@t45.foobar.com",
      "b58f" => "srDUk7emsidGNjbLFuYnfK",
      "b58fp" => "srDUk7emsidGNjbLFuYnfK",
      "b58g" => "QPbqJ6DKQHCekIAidSuLEh",
      "b58gp" => "QPbqJ6DKQHCekIAidSuLEh",
      "hex" => "d6228eb7a8e0987239404b367d71b32b",
      "dec" => "284634223844344640528697976929347810091"
    },
    {
      "data" => "francis@t46.foobar.com",
      "b58f" => "rW8R8bZXJwhhCEYKQCpbPN",
      "b58fp" => "rW8R8bZXJwhhCEYKQCpbPN",
      "b58g" => "Ps7n7AvtgUGGacuhmaNAlk",
      "b58gp" => "Ps7n7AvtgUGGacuhmaNAlk",
      "hex" => "d203774814975a022179e17f83dd52d4",
      "dec" => "279155875322951146415975694414515098324"
    },
    {
      "data" => "frank@t47.foobar.com",
      "b58f" => "iDcHArkcoxVyHhCgRruMZW",
      "b58fp" => "iDcHArkcoxVyHhCgRruMZW",
      "b58g" => "HbBfYPJBMVrWfGaFnPSjvs",
      "b58gp" => "HbBfYPJBMVrWfGaFnPSjvs",
      "hex" => "8edd18ff94472f25859cfa1e32196cc4",
      "dec" => "189898380034096017465875882890562727108"
    },
    {
      "data" => "frederick@t48.foobar.com",
      "b58f" => "iEBvmYEvswcsZNpbEJzk7C",
      "b58fp" => "iEBvmYEvswcsZNpbEJzk7C",
      "b58g" => "HcZTKucTQUBQvkNAcgXJ6a",
      "b58gp" => "HcZTKucTQUBQvkNAcgXJ6a",
      "hex" => "8f0f80816f9d1d929049601983463cb4",
      "dec" => "190160094253526001089684566148001447092"
    },
    {
      "data" => "george@t49.foobar.com",
      "b58f" => "6kDLTgBZmTdfUrKEsexM1b",
      "b58fp" => "6kDLTgBZmTdfUrKEsexM1b",
      "b58g" => "5JbipFZvKpCEqPhcQDVj0A",
      "b58gp" => "5JbipFZvKpCEqPhcQDVj0A",
      "hex" => "2b3c1a99211db57b76ca643e9eb9f046",
      "dec" => "57468881105070953017166104060493426758"
    },
    {
      "data" => "georgia@t50.foobar.com",
      "b58f" => "a55XavuUnj6Uozu7gPCsLG",
      "b58fp" => "a55XavuUnj6Uozu7gPCsLG",
      "b58g" => "944t9TSqLI5qMXS6FlaQie",
      "b58gp" => "944t9TSqLI5qMXS6FlaQie",
      "hex" => "49744634eec9c7c77712e9364b759838",
      "dec" => "97637374090326974943197689354239973432"
    },
    {
      "data" => "grace@t51.foobar.com",
      "b58f" => "rnXNjudUh8iU1cFanSmcYr",
      "b58fp" => "rnXNjudUh8iU1cFanSmcYr",
      "b58g" => "PLtkISCqG7Hq0Bd9LoKBuP",
      "b58gp" => "PLtkISCqG7Hq0Bd9LoKBuP",
      "hex" => "cd857907fbe68f8fc58bfd7041b90075",
      "dec" => "273184769422211533826041843707119468661"
    },
    {
      "data" => "gus@t52.foobar.com",
      "b58f" => "7aDMJbxRPaaNvKccwX4E8k",
      "b58fp" => "7aDMJbxRPaaNvKccwX4E8k",
      "b58g" => "69bjgAVnl99kThBBUt3c7J",
      "b58gp" => "69bjgAVnl99kThBBUt3c7J",
      "hex" => "31efd0567c1ee7bcd7ebd5fbbef3bfe9",
      "dec" => "66377356335883740692325969406920474601"
    },
    {
      "data" => "harper@t53.foobar.com",
      "b58f" => "vZ4AV7onL2p5LRcfUDVuiq",
      "b58fp" => "vZ4AV7onL2p5LRcfUDVuiq",
      "b58g" => "Tv3Yr6MLi1N4inBEqbrSHO",
      "b58gp" => "Tv3Yr6MLi1N4inBEqbrSHO",
      "hex" => "f2d0a2c6439670b221f33d97683651fa",
      "dec" => "322756474184974221506388382045152104954"
    },
    {
      "data" => "harry@t54.foobar.com",
      "b58f" => "az4wXc5RbGtqPVudFwxue6",
      "b58fp" => "az4wXc5RbGtqPVudFwxue6",
      "b58g" => "9X3UtB4nAeROlrSCdUVSD5",
      "b58gp" => "9X3UtB4nAeROlrSCdUVSD5",
      "hex" => "4d7ff854642dc9c7a36bae7e0081f4ff",
      "dec" => "103015014100223657657244003610524775679"
    },
    {
      "data" => "hazel@t55.foobar.com",
      "b58f" => "a1PDVgXfvzj7et4uNajZ6R",
      "b58fp" => "a1PDVgXfvzj7et4uNajZ6R",
      "b58g" => "90lbrFtETXI6DR3Sk9Iv5n",
      "b58gp" => "90lbrFtETXI6DR3Sk9Iv5n",
      "hex" => "48ff9d9920aff81e8ecaca0e4bde70f7",
      "dec" => "97031647865773215932344531084310900983"
    },
    {
      "data" => "helen@t56.foobar.com",
      "b58f" => "21wYy23x9FrFSVTEK5tgM2",
      "b58fp" => "21wYy23x9FrFSVTEK5tgM2",
      "b58g" => "10UuW12V8dPdorpch4RFj1",
      "b58gp" => "10UuW12V8dPdorpch4RFj1",
      "hex" => "82c3a4ac88014e72f03f25c080dc9a7",
      "dec" => "10863467332747740432426411704483432871"
    },
    {
      "data" => "henry@t57.foobar.com",
      "b58f" => "qQu8GQuD73WamRfkZ97XCx",
      "b58fp" => "qQu8GQuD73WamRfkZ97XCx",
      "b58g" => "OmS7emSb62s9KnEJv86taV",
      "b58gp" => "OmS7emSb62s9KnEJv86taV",
      "hex" => "c9205dc3f7fd3230e27e298b64b9e7d3",
      "dec" => "267342882442574927502996572789169317843"
    },
    {
      "data" => "homer@t58.foobar.com",
      "b58f" => "jpVQDxWQk91cAdiEMYfibY",
      "b58fp" => "jpVQDxWQk91cAdiEMYfibY",
      "b58g" => "INrmbVsmJ80BYCHcjuEHAu",
      "b58gp" => "INrmbVsmJ80BYCHcjuEHAu",
      "hex" => "951bc82a70ea02f072e82bc3bf7104b0",
      "dec" => "198199223231581684963836474150054069424"
    },
    {
      "data" => "hopper@t59.foobar.com",
      "b58f" => "5Hcu7XohWve1GDMc5v44Tm",
      "b58fp" => "5Hcu7XohWve1GDMc5v44Tm",
      "b58g" => "4fBS6tMGsTD0ebjB4T33pK",
      "b58gp" => "4fBS6tMGsTD0ebjB4T33pK",
      "hex" => "262520821f0d99a107ea674eff4b1d16",
      "dec" => "50703438169971512333102494252087844118"
    },
    {
      "data" => "hudson@t60.foobar.com",
      "b58f" => "9cGj3mSi8mDP2QLnqXScFC",
      "b58fp" => "9cGj3mSi8mDP2QLnqXScFC",
      "b58g" => "8BeI2KoH7Kbl1miLOtoBda",
      "b58gp" => "8BeI2KoH7Kbl1miLOtoBda",
      "hex" => "426b2220ec652b3671839e4bdd9c8a06",
      "dec" => "88285315696056166672838258823345768966"
    },
    {
      "data" => "hugh@t61.foobar.com",
      "b58f" => "pptG5q3SGUui2uwGGpcpAE",
      "b58fp" => "pptG5q3SGUui2uwGGpcpAE",
      "b58g" => "NNRe4O2oeqSH1SUeeNBNYc",
      "b58gp" => "NNRe4O2oeqSH1SUeeNBNYc",
      "hex" => "bd895c6e1666f9043dcb810fd465f23e",
      "dec" => "251937310576682940483848639912876569150"
    },
    {
      "data" => "hugo@t62.foobar.com",
      "b58f" => "kY5JTDDXRL8MtZrP4BqjuN",
      "b58fp" => "kY5JTDDXRL8MtZrP4BqjuN",
      "b58g" => "Ju4gpbbtni7jRvPl3ZOISk",
      "b58gp" => "Ju4gpbbtni7jRvPl3ZOISk",
      "hex" => "a1b234db8e7267d942b2d7f1f1a1a01e",
      "dec" => "214931008242542814715707751534692507678"
    },
    {
      "data" => "ike@t63.foobar.com",
      "b58f" => "sxsMu3s9XDwzEH5ZSUxvbP",
      "b58fp" => "sxsMu3s9XDwzEH5ZSUxvbP",
      "b58g" => "QVQjS2Q8tbUXcf4voqVTAl",
      "b58gp" => "QVQjS2Q8tbUXcf4voqVTAl",
      "hex" => "d6f22b1ad63799ed251d7ff39db7021f",
      "dec" => "285712201207579617398691406450234163743"
    },
    {
      "data" => "india@t64.foobar.com",
      "b58f" => "t2Rzr9QNoXwEYr18P9QGft",
      "b58fp" => "t2Rzr9QNoXwEYr18P9QGft",
      "b58g" => "R1nXP8mkMtUcuP07l8meER",
      "b58gp" => "R1nXP8mkMtUcuP07l8meER",
      "hex" => "dae90a47ca3b71bb1cbc4725b29f6607",
      "dec" => "290981716761033685846243034613185209863"
    },
    {
      "data" => "ione@t65.foobar.com",
      "b58f" => "uLeGJWFRpRWwzLbbCHrs3w",
      "b58fp" => "uLeGJWFRpRWwzLbbCHrs3w",
      "b58g" => "SiDegsdnNnsUXiAAafPQ2U",
      "b58gp" => "SiDegsdnNnsUXiAAafPQ2U",
      "hex" => "e8ed0d82c159c69c92e7124d93136bb2",
      "dec" => "309611743408398350198030797612466269106"
    },
    {
      "data" => "irene@t66.foobar.com",
      "b58f" => "oV4fFctoDETxRNhyzpsLig",
      "b58fp" => "oV4fFctoDETxRNhyzpsLig",
      "b58g" => "Mr3EdBRMbcpVnkGWXNQiHF",
      "b58gp" => "Mr3EdBRMbcpVnkGWXNQiHF",
      "hex" => "b991799ef2db56aca9a4544f91513039",
      "dec" => "246662529029469242039070471394446880825"
    },
    {
      "data" => "iris@t67.foobar.com",
      "b58f" => "q3mKKPV83BrL6Ed7N4tQfB",
      "b58fp" => "q3mKKPV83BrL6Ed7N4tQfB",
      "b58g" => "O2Khhlr72ZPi5cC6k3RmEZ",
      "b58gp" => "O2Khhlr72ZPi5cC6k3RmEZ",
      "hex" => "c2af9b119ffcf8d237b57d0b07fa79b7",
      "dec" => "258782028302398543822595869225684466103"
    },
    {
      "data" => "isla@t68.foobar.com",
      "b58f" => "iSG8o3GpnfFxqxRd3NcJeu",
      "b58fp" => "iSG8o3GpnfFxqxRd3NcJeu",
      "b58g" => "Hoe7M2eNLEdVOVnC2kBgDS",
      "b58gp" => "Hoe7M2eNLEdVOVnC2kBgDS",
      "hex" => "90bf46673228bb7e3491250ee2f67f4e",
      "dec" => "192401988037704525295815727943616200526"
    },
    {
      "data" => "ivy@t69.foobar.com",
      "b58f" => "cQttt28wtoq3jcGB1zBLVA",
      "b58fp" => "cQttt28wtoq3jcGB1zBLVA",
      "b58g" => "BmRRR17URMO2IBeZ0XZirY",
      "b58gp" => "BmRRR17URMO2IBeZ0XZirY",
      "hex" => "5fd9284b1cfe329b816ef0433256769c",
      "dec" => "127404205265338286577970974527560513180"
    },
    {
      "data" => "jack@t70.foobar.com",
      "b58f" => "wxArA8fKvrFgz7W7JpMD9u",
      "b58fp" => "wxArA8fKvrFgz7W7JpMD9u",
      "b58g" => "UVYPY7EhTPdFX6s6gNjb8S",
      "b58gp" => "UVYPY7EhTPdFX6s6gNjb8S",
      "hex" => "f75b7119d0f3e493ab5b5b393d52ba58",
      "dec" => "328794107930657895857386130336585529944"
    },
    {
      "data" => "jacob@t71.foobar.com",
      "b58f" => "bivemVTZPiBZQ38ZzqWrAC",
      "b58fp" => "bivemVTZPiBZQ38ZzqWrAC",
      "b58g" => "AHTDKrpvlHZvm27vXOsPYa",
      "b58gp" => "AHTDKrpvlHZvm27vXOsPYa",
      "hex" => "536d0b66e7ab6cea9ab7671af3aeb3ac",
      "dec" => "110892115267204808213014476466452083628"
    },
    {
      "data" => "james@t72.foobar.com",
      "b58f" => "hNJPaGPKT1YmEHyBkmMsWd",
      "b58fp" => "hNJPaGPKT1YmEHyBkmMsWd",
      "b58g" => "Gkgl9elhp0uKcfWZJKjQsC",
      "b58gp" => "Gkgl9elhp0uKcfWZJKjQsC",
      "hex" => "8818d10aba076e2dba0785c898d4fad8",
      "dec" => "180903862424815377531093387098417593048"
    },
    {
      "data" => "jane@t73.foobar.com",
      "b58f" => "mpEHWdfJfvTfbqJedP9ZqE",
      "b58fp" => "mpEHWdfJfvTfbqJedP9ZqE",
      "b58g" => "KNcfsCEgETpEAOgDCl8vOc",
      "b58gp" => "KNcfsCEgETpEAOgDCl8vOc",
      "hex" => "a544be6a91da1dc45a1318d094e5d38a",
      "dec" => "219679557592040420460719998154110784394"
    },
    {
      "data" => "jean@t74.foobar.com",
      "b58f" => "kkY69EJdQohctAsJQMvmuE",
      "b58fp" => "kkY69EJdQohctAsJQMvmuE",
      "b58g" => "JJu58cgCmMGBRYQgmjTKSc",
      "b58gp" => "JJu58cgCmMGBRYQgmjTKSc",
      "hex" => "9ca7550536490830479877c57aa7a126",
      "dec" => "208228405335579796134985302974107459878"
    },
    {
      "data" => "jill@t75.foobar.com",
      "b58f" => "5URSdHeFGbtZ7Z35GpUPgB",
      "b58fp" => "5URSdHeFGbtZ7Z35GpUPgB",
      "b58g" => "4qnoCfDdeARv6v24eNqlFZ",
      "b58gp" => "4qnoCfDdeARv6v24eNqlFZ",
      "hex" => "27c5f62b70d9b58b90f82228209169b5",
      "dec" => "52867767231242081836083775444920396213"
    },
    {
      "data" => "john@t76.foobar.com",
      "b58f" => "9FtjroUqSCHb2RCGyBqjAT",
      "b58fp" => "9FtjroUqSCHb2RCGyBqjAT",
      "b58g" => "8dRIPMqOoafA1naeWZOIYp",
      "b58gp" => "8dRIPMqOoafA1naeWZOIYp",
      "hex" => "464bf39972473ad254ddfc0b2c93545f",
      "dec" => "93440322752144177843776511857021637727"
    },
    {
      "data" => "jonathan@t77.foobar.com",
      "b58f" => "8nHqePr6kErsi8oHtAceLU",
      "b58fp" => "8nHqePr6kErsi8oHtAceLU",
      "b58g" => "7LfODlP5JcPQH7MfRYBDiq",
      "b58gp" => "7LfODlP5JcPQH7MfRYBDiq",
      "hex" => "3bb81d4e6ff3afd920675b25944ff0f8",
      "dec" => "79380428777603062279783413497396719864"
    },
    {
      "data" => "joseph@t78.foobar.com",
      "b58f" => "kyzmfyyPzCZMeaGnST2Bf2",
      "b58fp" => "kyzmfyyPzCZMeaGnST2Bf2",
      "b58g" => "JWXKEWWlXavjD9eLop1ZE1",
      "b58gp" => "JWXKEWWlXavjD9eLop1ZE1",
      "hex" => "9e69fcc17f49695356655bfc19d2baf1",
      "dec" => "210568341001811695511689842186842716913"
    },
    {
      "data" => "judith@t79.foobar.com",
      "b58f" => "9r5SHvk4vbxNsahcZ6i2BM",
      "b58fp" => "9r5SHvk4vbxNsahcZ6i2BM",
      "b58g" => "8P4ofTJ3TAVkQ9GBv5H1Zj",
      "b58gp" => "8P4ofTJ3TAVkQ9GBv5H1Zj",
      "hex" => "4449b51e1164cae33db89064765fad97",
      "dec" => "90770214882413554013430705469276532119"
    },
    {
      "data" => "julia@t80.foobar.com",
      "b58f" => "mkbZ6sbrx3s5DLceRUhqnX",
      "b58fp" => "mkbZ6sbrx3s5DLceRUhqnX",
      "b58g" => "KJAv5QAPV2Q4biBDnqGOLt",
      "b58gp" => "KJAv5QAPV2Q4biBDnqGOLt",
      "hex" => "a4a4ac97f94f01f7146667c4d7c04079",
      "dec" => "218848428608587564493977978153017032825"
    },
    {
      "data" => "julian@t81.foobar.com",
      "b58f" => "xwao2JiMxHxQbybEMxHUx4",
      "b58fp" => "xwao2JiMxHxQbybEMxHUx4",
      "b58g" => "VU9M1gHjVfVmAWAcjVfqV3",
      "b58gp" => "VU9M1gHjVfVmAWAcjVfqV3",
      "hex" => "ff41645f7a08525b84a5650e900fa751",
      "dec" => "339292674026361346935504227078373353297"
    },
    {
      "data" => "june@t82.foobar.com",
      "b58f" => "2AJRk8P3JCjRnV2SBhptEg",
      "b58fp" => "2AJRk8P3JCjRnV2SBhptEg",
      "b58g" => "1YgnJ7l2gaInLr1oZGNRcF",
      "b58gp" => "1YgnJ7l2gaInLr1oZGNRcF",
      "hex" => "cf2d59bcc3ce4efd9255cb0fb6738ef",
      "dec" => "17211604286003744954430906660471388399"
    },
    {
      "data" => "kai@t83.foobar.com",
      "b58f" => "qF9STnT3WN9Z5qzSfY85sd",
      "b58fp" => "qF9STnT3WN9Z5qzSfY85sd",
      "b58g" => "Od8opLp2sk8v4OXoEu74QC",
      "b58gp" => "Od8opLp2sk8v4OXoEu74QC",
      "hex" => "c7d2ce440d685479c8f89bdc0bfab2d8",
      "dec" => "265610937069533408062170795987529544408"
    },
    {
      "data" => "kate@t84.foobar.com",
      "b58f" => "uxQaYE2WWsQi1YnNWR5xKF",
      "b58fp" => "uxQaYE2WWsQi1YnNWR5xKF",
      "b58g" => "SVm9uc1ssQmH0uLksn4Vhd",
      "b58gp" => "SVm9uc1ssQmH0uLksn4Vhd",
      "hex" => "e731a05c4a5bae2cf3307feadd52d1b1",
      "dec" => "307309342069924034271477187109970956721"
    },
    {
      "data" => "katherine@t85.foobar.com",
      "b58f" => "vcNFyUwtsKgbHtG3zG98Zq",
      "b58fp" => "vcNFyUwtsKgbHtG3zG98Zq",
      "b58g" => "TBkdWqURQhFAfRe2Xe87vO",
      "b58gp" => "TBkdWqURQhFAfRe2Xe87vO",
      "hex" => "ec7ef8b681b8bd6113de3e014f4013de",
      "dec" => "314357080906669720432661582760271418334"
    },
    {
      "data" => "kingston@t86.foobar.com",
      "b58f" => "oLvodypvWHCM11xd5xUJGe",
      "b58fp" => "oLvodypvWHCM11xd5xUJGe",
      "b58g" => "MiTMCWNTsfaj00VC4VqgeD",
      "b58gp" => "MiTMCWNTsfaj00VC4VqgeD",
      "hex" => "b85fe2645a6be0160798ec1de252c115",
      "dec" => "245075811201356070106048268572927639829"
    },
    {
      "data" => "laura@t87.foobar.com",
      "b58f" => "wj48zQvxTCR9aLk63qV4Kw",
      "b58fp" => "wj48zQvxTCR9aLk63qV4Kw",
      "b58g" => "UI37XmTVpan89iJ52Or3hU",
      "b58gp" => "UI37XmTVpan89iJ52Or3hU",
      "hex" => "f5777a200f649a2c93af5e2169492510",
      "dec" => "326281219287506775105496951448943535376"
    },
    {
      "data" => "lennon@t88.foobar.com",
      "b58f" => "ePKh1xSQpgsiz8v8gdACqc",
      "b58fp" => "ePKh1xSQpgsiz8v8gdACqc",
      "b58g" => "DlhG0VomNFQHX7T7FCYaOB",
      "b58gp" => "DlhG0VomNFQHX7T7FCYaOB",
      "hex" => "6ff16df82d3f3beb417005b7a9f71a3b",
      "dec" => "148797881520266927648349238213429631547"
    },
    {
      "data" => "leo@t89.foobar.com",
      "b58f" => "cHyotGtfcJnU7VCbJUBecG",
      "b58fp" => "cHyotGtfcJnU7VCbJUBecG",
      "b58g" => "BfWMReREBgLq6raAgqZDBe",
      "b58gp" => "BfWMReREBgLq6raAgqZDBe",
      "hex" => "5ee1fab788722ca7810db478039595f2",
      "dec" => "126120783540335071050526782651301729778"
    },
    {
      "data" => "leonora@t90.foobar.com",
      "b58f" => "g3HEhnT2xUSqqSQdbnBdZT",
      "b58fp" => "g3HEhnT2xUSqqSQdbnBdZT",
      "b58g" => "F2fcGLp1VqoOOomCALZCvp",
      "b58gp" => "F2fcGLp1VqoOOomCALZCvp",
      "hex" => "79da3dc941d08c6cc57f12bef1d55dd5",
      "dec" => "161969761377350546510062367583589719509"
    },
    {
      "data" => "leopold@t91.foobar.com",
      "b58f" => "oJZSBpt8jrai34aqmG49ig",
      "b58fp" => "oJZSBpt8jrai34aqmG49ig",
      "b58g" => "MgvoZNR7IP9H239OKe38HF",
      "b58gp" => "MgvoZNR7IP9H239OKe38HF",
      "hex" => "b829f440bb438979297922a91deb5e01",
      "dec" => "244795789432125484533329650561181244929"
    },
    {
      "data" => "levi@t92.foobar.com",
      "b58f" => "vJKcfBSHnwpwZ6g9H29UV9",
      "b58fp" => "vJKcfBSHnwpwZ6g9H29UV9",
      "b58g" => "TghBEZofLUNUv5F8f18qr8",
      "b58gp" => "TghBEZofLUNUv5F8f18qr8",
      "hex" => "f0d0e0f458dd70d02a5ac487c5465aca",
      "dec" => "320099279353880311313755390324920179402"
    },
    {
      "data" => "lila@t93.foobar.com",
      "b58f" => "c4gm3ivHspRg9Rj6U11a5",
      "b58fp" => "1c4gm3ivHspRg9Rj6U11a5",
      "b58g" => "B3FK2HTfQNnF8nI5q0094",
      "b58gp" => "0B3FK2HTfQNnF8nI5q0094",
      "hex" => "18b317e91bf0d8a73ec2a47e391b26e",
      "dec" => "2051961125046607842836342763775177326"
    },
    {
      "data" => "lionel@t94.foobar.com",
      "b58f" => "rSeNeb5CwYajNAb8yLrNcp",
      "b58fp" => "rSeNeb5CwYajNAb8yLrNcp",
      "b58g" => "PoDkDA4aUu9IkYA7WiPkBN",
      "b58gp" => "PoDkDA4aUu9IkYA7WiPkBN",
      "hex" => "d178286004ceb134bb7cdcff4b477275",
      "dec" => "278432545645847159778246771644599595637"
    },
    {
      "data" => "lola@t95.foobar.com",
      "b58f" => "bnkNUMarkMh3TDRtJgBNJE",
      "b58fp" => "bnkNUMarkMh3TDRtJgBNJE",
      "b58g" => "ALJkqj9PJjG2pbnRgFZkgc",
      "b58gp" => "ALJkqj9PJjG2pbnRgFZkgc",
      "hex" => "53f6369f8e73f84b482c8422050a000a",
      "dec" => "111604336568831092405347974890908155914"
    },
    {
      "data" => "louis@t96.foobar.com",
      "b58f" => "ku1kVEn1Y2hjmTJ3KamydJ",
      "b58fp" => "ku1kVEn1Y2hjmTJ3KamydJ",
      "b58g" => "JS0JrcL0u1GIKpg2h9KWCg",
      "b58gp" => "JS0JrcL0u1GIKpg2h9KWCg",
      "hex" => "9dc6abfbe7ea07b1925f89a537dfc272",
      "dec" => "209720358366306665675044893128138932850"
    },
    {
      "data" => "louisa@t97.foobar.com",
      "b58f" => "fBQRiZhJLVUxPpwHVjt6qV",
      "b58fp" => "fBQRiZhJLVUxPpwHVjt6qV",
      "b58g" => "EZmnHvGgirqVlNUfrIR5Or",
      "b58gp" => "EZmnHvGgirqVlNUfrIR5Or",
      "hex" => "766114039508fd0f702b44088d063311",
      "dec" => "157352962229898644772259471141707854609"
    },
    {
      "data" => "luca@t98.foobar.com",
      "b58f" => "h9d74J1GYGZ7F9jvJob1ua",
      "b58fp" => "h9d74J1GYGZ7F9jvJob1ua",
      "b58g" => "G8C63g0euev6d8ITgMA0S9",
      "b58gp" => "G8C63g0euev6d8ITgMA0S9",
      "hex" => "82b7a0dff207479f737c8ca73716a7d1",
      "dec" => "173753092705471934968608194946733090769"
    },
    {
      "data" => "lucy@t99.foobar.com",
      "b58f" => "3JAMMqpzhUL1cx9gLAZtAt",
      "b58fp" => "3JAMMqpzhUL1cx9gLAZtAt",
      "b58g" => "2gYjjONXGqi0BV8FiYvRYR",
      "b58gp" => "2gYjjONXGqi0BV8FiYvRYR",
      "hex" => "1624f492f48845e48f8ee1281b117fe3",
      "dec" => "29434899145109507456052791085139853283"
    },
    {
      "data" => "luke@t100.foobar.com",
      "b58f" => "78fqBQFx8EBRHhiQdNJvEr",
      "b58fp" => "78fqBQFx8EBRHhiQdNJvEr",
      "b58g" => "67EOZmdV7cZnfGHmCkgTcP",
      "b58gp" => "67EOZmdV7cZnfGHmCkgTcP",
      "hex" => "3199ed7fca536bece85865e90e122139",
      "dec" => "65931410268486233647240291988530143545"
    },
    {
      "data" => "lulu@t101.foobar.com",
      "b58f" => "4Lt6GFG8KwtKDFXxT9ZKZk",
      "b58fp" => "4Lt6GFG8KwtKDFXxT9ZKZk",
      "b58g" => "3iR5ede7hURhbdtVp8vhvJ",
      "b58gp" => "3iR5ede7hURhbdtVp8vhvJ",
      "hex" => "1e80d77efa2fc0876444d3cfeb76bc91",
      "dec" => "40545824649682177190772249051362933905"
    },
    {
      "data" => "madeline@t102.foobar.com",
      "b58f" => "x1t6CDsqgVFaYQ8t7c1x3r",
      "b58fp" => "x1t6CDsqgVFaYQ8t7c1x3r",
      "b58g" => "V0R5abQOFrd9um7R6B0V2P",
      "b58gp" => "V0R5abQOFrd9um7R6B0V2P",
      "hex" => "fb1bff6568aed636f41e3f758cae6799",
      "dec" => "333781599006085475275657012705099671449"
    },
    {
      "data" => "magnus@t103.foobar.com",
      "b58f" => "jyUa5mGS5qqLWKqdyM2j7M",
      "b58fp" => "jyUa5mGS5qqLWKqdyM2j7M",
      "b58g" => "IWq94Keo4OOishOCWj1I6j",
      "b58gp" => "IWq94Keo4OOishOCWj1I6j",
      "hex" => "965c7067dfe01fd7d990f191b6760609",
      "dec" => "199864170538385039982551986909836871177"
    },
    {
      "data" => "mamie@t104.foobar.com",
      "b58f" => "gon7gmCvbkL1zbyfnU8zki",
      "b58fp" => "gon7gmCvbkL1zbyfnU8zki",
      "b58g" => "FML6FKaTAJi0XAWELq7XJH",
      "b58gp" => "FML6FKaTAJi0XAWELq7XJH",
      "hex" => "7c98737c464528bc3f407d28b31115fb",
      "dec" => "165615842922970992686737871753800914427"
    },
    {
      "data" => "margaret@t105.foobar.com",
      "b58f" => "pCtYEFcXX2ccwAnEy9ypzX",
      "b58fp" => "pCtYEFcXX2ccwAnEy9ypzX",
      "b58g" => "NaRucdBtt1BBUYLcW8WNXt",
      "b58gp" => "NaRucdBtt1BBUYLcW8WNXt",
      "hex" => "bf5a34d32e9dbbdc79ef7266f351636d",
      "dec" => "254350925329055745562895900644058686317"
    },
    {
      "data" => "maria@t106.foobar.com",
      "b58f" => "vEE2nbqjWK31Mymb5J7JVV",
      "b58fp" => "vEE2nbqjWK31Mymb5J7JVV",
      "b58g" => "Tcc1LAOIsh20jWKA4g6grr",
      "b58gp" => "Tcc1LAOIsh20jWKA4g6grr",
      "hex" => "f03eb79cdab2074247b0ed7b13fbeeaf",
      "dec" => "319340365501842744506967839992448806575"
    },
    {
      "data" => "marian@t107.foobar.com",
      "b58f" => "oHmtco8KggGsgky3ViPu9h",
      "b58fp" => "oHmtco8KggGsgky3ViPu9h",
      "b58g" => "MfKRBM7hFFeQFJW2rHlS8G",
      "b58gp" => "MfKRBM7hFFeQFJW2rHlS8G",
      "hex" => "b7ef28d4db82dc3e5202aca10a2724d8",
      "dec" => "244490510338519445213130319579457201368"
    },
    {
      "data" => "mark@t108.foobar.com",
      "b58f" => "rc5LpJLg4UwdzgxqugrDuq",
      "b58fp" => "rc5LpJLg4UwdzgxqugrDuq",
      "b58g" => "PB4iNgiF3qUCXFVOSFPbSO",
      "b58gp" => "PB4iNgiF3qUCXFVOSFPbSO",
      "hex" => "cc0095bd7b3eb04093ceca830ed6007c",
      "dec" => "271165548231418939303814442687403524220"
    },
    {
      "data" => "martha@t109.foobar.com",
      "b58f" => "ruTREKhJqfm1t6yLGM9w17",
      "b58fp" => "ruTREKhJqfm1t6yLGM9w17",
      "b58g" => "PSpnchGgOEK0R5Wiej8U06",
      "b58gp" => "PSpnchGgOEK0R5Wiej8U06",
      "hex" => "ce7d3fea402a7f259d23855b48888e4e",
      "dec" => "274471300590062997612228066536183074382"
    },
    {
      "data" => "martin@t110.foobar.com",
      "b58f" => "e6H2s8W6bTksoVCN86oYGT",
      "b58fp" => "e6H2s8W6bTksoVCN86oYGT",
      "b58g" => "D5f1Q7s5ApJQMrak75Muep",
      "b58gp" => "D5f1Q7s5ApJQMrak75Muep",
      "hex" => "6a12cdd25d324f4a5fcec73f42f33bc3",
      "dec" => "140995803457380512656345606514329992131"
    },
    {
      "data" => "mary@t111.foobar.com",
      "b58f" => "aQjwtP33evg7HJeoV9NuQ8",
      "b58fp" => "aQjwtP33evg7HJeoV9NuQ8",
      "b58g" => "9mIURl22DTF6fgDMr8kSm7",
      "b58gp" => "9mIURl22DTF6fgDMr8kSm7",
      "hex" => "4fa15d9b40acb1ee8fec15073d3976a7",
      "dec" => "105846870025706606653018967014108657319"
    },
    {
      "data" => "matilda@t112.foobar.com",
      "b58f" => "pP9mqi9ZCqaBJQf5BP5zHu",
      "b58fp" => "pP9mqi9ZCqaBJQf5BP5zHu",
      "b58g" => "Nl8KOH8vaO9ZgmE4Zl4XfS",
      "b58gp" => "Nl8KOH8vaO9ZgmE4Zl4XfS",
      "hex" => "c0d74b2309417caf1e51ba1d10faf27a",
      "dec" => "256329642971859331482674501280803254906"
    },
    {
      "data" => "matthew@t113.foobar.com",
      "b58f" => "iPa4rqs6XBEHXCjjNwfM8X",
      "b58fp" => "iPa4rqs6XBEHXCjjNwfM8X",
      "b58g" => "Hl93POQ5tZcftaIIkUEj7t",
      "b58gp" => "Hl93POQ5tZcftaIIkUEj7t",
      "hex" => "9040e5bb5c38aa02855ccd5c6a537571",
      "dec" => "191745797907980864664599905403978085745"
    },
    {
      "data" => "michael@t114.foobar.com",
      "b58f" => "o5v95kkqNSty5naX3RMnc4",
      "b58fp" => "o5v95kkqNSty5naX3RMnc4",
      "b58g" => "M4T84JJOkoRW4L9t2njLB3",
      "b58gp" => "M4T84JJOkoRW4L9t2njLB3",
      "hex" => "b2c9fbb8586b14748543baf74956060d",
      "dec" => "237651340408437077447858640178654873101"
    },
    {
      "data" => "millie@t115.foobar.com",
      "b58f" => "6uDWP8ieVow3TMZwNfNAXM",
      "b58fp" => "6uDWP8ieVow3TMZwNfNAXM",
      "b58g" => "5Sbsl7HDrMU2pjvUkEkYtj",
      "b58gp" => "5Sbsl7HDrMU2pjvUkEkYtj",
      "hex" => "2c7de74039f98edea6906ed3a20d1d3b",
      "dec" => "59139759247016339082240038792481021243"
    },
    {
      "data" => "milo@t116.foobar.com",
      "b58f" => "7zFWBQK4DLjR6xKCyZfkfb",
      "b58fp" => "7zFWBQK4DLjR6xKCyZfkfb",
      "b58g" => "6XdsZmh3biIn5VhaWvEJEA",
      "b58gp" => "6XdsZmh3biIn5VhaWvEJEA",
      "hex" => "354afdc67fb65989cdb6c0eb68b42122",
      "dec" => "70838460920463063784493980174817435938"
    },
    {
      "data" => "minnie@t117.foobar.com",
      "b58f" => "eNJD4n4vii5YWpR4zdaJeV",
      "b58fp" => "eNJD4n4vii5YWpR4zdaJeV",
      "b58g" => "Dkgb3L3THH4usNn3XC9gDr",
      "b58gp" => "Dkgb3L3THH4usNn3XC9gDr",
      "hex" => "6fcd4b0d7d517b6f557430612af03517",
      "dec" => "148610250637595820240770023684809176343"
    },
    {
      "data" => "moses@t118.foobar.com",
      "b58f" => "rxR5gbUKw3paMpUwtQ1sQA",
      "b58fp" => "rxR5gbUKw3paMpUwtQ1sQA",
      "b58g" => "PVn4FAqhU2N9jNqURm0QmY",
      "b58gp" => "PVn4FAqhU2N9jNqURm0QmY",
      "hex" => "cee6c4170a4dd0edb06162eebdd47e0a",
      "dec" => "275019172586874657751369234776245698058"
    },
    {
      "data" => "nathan@t119.foobar.com",
      "b58f" => "foGEysvSy36aiXbqwSw8zp",
      "b58fp" => "foGEysvSy36aiXbqwSw8zp",
      "b58g" => "EMecWQToW259HtAOUoU7XN",
      "b58gp" => "EMecWQToW259HtAOUoU7XN",
      "hex" => "748b5d614f4d586244013b2d6f00661d",
      "dec" => "154914070748154306231125793214316963357"
    },
    {
      "data" => "nathaniel@t120.foobar.com",
      "b58f" => "5yoDz6zDST9F3yKyUKKHcN",
      "b58fp" => "5yoDz6zDST9F3yKyUKKHcN",
      "b58g" => "4WMbX5Xbop8d2WhWqhhfBk",
      "b58gp" => "4WMbX5Xbop8d2WhWqhhfBk",
      "hex" => "24ea4ffd9fb2870e6db733b7824a03d8",
      "dec" => "49068827717661868823574812199106511832"
    },
    {
      "data" => "nicholas@t121.foobar.com",
      "b58f" => "37xHbT6Tzd9KcpPVYQNueA",
      "b58fp" => "37xHbT6Tzd9KcpPVYQNueA",
      "b58g" => "26VfAp5pXC8hBNlrumkSDY",
      "b58gp" => "26VfAp5pXC8hBNlrumkSDY",
      "hex" => "111c483152d3c743dff1af12e947edf4",
      "dec" => "22743724481687766288474438032565988852"
    },
    {
      "data" => "olive@t122.foobar.com",
      "b58f" => "wmyGY8fyaLBg9QXy46mT7R",
      "b58fp" => "wmyGY8fyaLBg9QXy46mT7R",
      "b58g" => "UKWeu7EW9iZF8mtW35Kp6n",
      "b58gp" => "UKWeu7EW9iZF8mtW35Kp6n",
      "hex" => "f5d130f24f4207ab9057f75061a70a89",
      "dec" => "326747041764143612669286147042870495881"
    },
    {
      "data" => "olivia@t123.foobar.com",
      "b58f" => "rR9J61gvnvoL7gPPMSSUnF",
      "b58fp" => "rR9J61gvnvoL7gPPMSSUnF",
      "b58g" => "Pn8g50FTLTMi6FlljooqLd",
      "b58gp" => "Pn8g50FTLTMi6FlljooqLd",
      "hex" => "d15149e0e0150085d84b9631ab35b489",
      "dec" => "278230725596948240353155095390353470601"
    },
    {
      "data" => "orson@t124.foobar.com",
      "b58f" => "pYUvs2RzKhJ98mtSWCgdcA",
      "b58fp" => "pYUvs2RzKhJ98mtSWCgdcA",
      "b58g" => "NuqTQ1nXhGg87KRosaFCBY",
      "b58gp" => "NuqTQ1nXhGg87KRosaFCBY",
      "hex" => "c234330829165f8998d31ec0f3569ca8",
      "dec" => "258141265668348509663067137263653002408"
    },
    {
      "data" => "oscar@t125.foobar.com",
      "b58f" => "78znFsuexcTXmP7PxwyE6R",
      "b58fp" => "78znFsuexcTXmP7PxwyE6R",
      "b58g" => "67XLdQSDVBptKl6lVUWc5n",
      "b58gp" => "67XLdQSDVBptKl6lVUWc5n",
      "hex" => "31a59b0e173e8a46f3a149723a939fab",
      "dec" => "65992045664995727161719674319257444267"
    },
    {
      "data" => "otis@t126.foobar.com",
      "b58f" => "2Q8pdN9AmWg8xi2gp6S1mu",
      "b58fp" => "2Q8pdN9AmWg8xi2gp6S1mu",
      "b58g" => "1m7NCk8YKsF7VH1FN5o0KS",
      "b58gp" => "1m7NCk8YKsF7VH1FN5o0KS",
      "hex" => "ed16676da65eb5f72565c70b2f7a664",
      "dec" => "19696460206716295514228589339658921572"
    },
    {
      "data" => "pamela@t127.foobar.com",
      "b58f" => "ij9ddEeBWXc8NrjzoxqeeU",
      "b58fp" => "ij9ddEeBWXc8NrjzoxqeeU",
      "b58g" => "HI8CCcDZstB7kPIXMVODDq",
      "b58gp" => "HI8CCcDZstB7kPIXMVODDq",
      "hex" => "8c33ce19a22fbb376a0f30d028c7e6aa",
      "dec" => "186360906756950188725629206869974705834"
    },
    {
      "data" => "patricia@t128.foobar.com",
      "b58f" => "sVBFufZC7vbVAra9ZNprvd",
      "b58fp" => "sVBFufZC7vbVAra9ZNprvd",
      "b58g" => "QrZdSEva6TArYP98vkNPTC",
      "b58gp" => "QrZdSEva6TArYP98vkNPTC",
      "hex" => "da0a0398f48f81b23771e37037e183ba",
      "dec" => "289823699015294352953910878625771652026"
    },
    {
      "data" => "patrick@t129.foobar.com",
      "b58f" => "9xLQ7fv3erkjBv6QEa9Ppy",
      "b58fp" => "9xLQ7fv3erkjBv6QEa9Ppy",
      "b58g" => "8Vim6ET2DPJIZT5mc98lNW",
      "b58gp" => "8Vim6ET2DPJIZT5mc98lNW",
      "hex" => "4538cb142a711787918ec253c06fe702",
      "dec" => "92011619260085027297284244299641251586"
    },
    {
      "data" => "paul@t130.foobar.com",
      "b58f" => "92v4ieSoNv5KAWwqDQaLuv",
      "b58fp" => "92v4ieSoNv5KAWwqDQaLuv",
      "b58g" => "81T3HDoMkT4hYsUObm9iST",
      "b58gp" => "81T3HDoMkT4hYsUObm9iST",
      "hex" => "40fec28d573148993c2e1b4444703e2d",
      "dec" => "86393381117921261075517425553868078637"
    },
    {
      "data" => "pearl@t131.foobar.com",
      "b58f" => "sMtVHCfgoGsXcFL8P2gEv4",
      "b58fp" => "sMtVHCfgoGsXcFL8P2gEv4",
      "b58g" => "QjRrfaEFMeQtBdi7l1FcT3",
      "b58gp" => "QjRrfaEFMeQtBdi7l1FcT3",
      "hex" => "d8e748f09cc9385042bc2b5574859275",
      "dec" => "288314147060636761628068120255474799221"
    },
    {
      "data" => "peter@t132.foobar.com",
      "b58f" => "aiDSCwedfswZBEk3p93gg4",
      "b58fp" => "aiDSCwedfswZBEk3p93gg4",
      "b58g" => "9HboaUDCEQUvZcJ2N82FF3",
      "b58gp" => "9HboaUDCEQUvZcJ2N82FF3",
      "hex" => "4b593b67985b3c2d84006327dbf992b5",
      "dec" => "100155418974097662468540077349738746549"
    },
    {
      "data" => "philip@t133.foobar.com",
      "b58f" => "uM6TUDWqaFV8R5htKkpirw",
      "b58fp" => "uM6TUDWqaFV8R5htKkpirw",
      "b58g" => "Sj5pqbsO9dr7n4GRhJNHPU",
      "b58gp" => "Sj5pqbsO9dr7n4GRhJNHPU",
      "hex" => "e90bfc2ae3f673e79ea5e0d7c99b9b94",
      "dec" => "309772352848683267636395625001275595668"
    },
    {
      "data" => "piper@t134.foobar.com",
      "b58f" => "gPXui9N46dUHj1BuZeuySk",
      "b58fp" => "gPXui9N46dUHj1BuZeuySk",
      "b58g" => "FltSH8k35CqfI0ZSvDSWoJ",
      "b58gp" => "FltSH8k35CqfI0ZSvDSWoJ",
      "hex" => "802b3b9204d6bae794cf21d0e3aadd37",
      "dec" => "170365660456362104647631848721334590775"
    },
    {
      "data" => "poppy@t135.foobar.com",
      "b58f" => "9oTgGP72muLRPePw86E7yU",
      "b58fp" => "9oTgGP72muLRPePw86E7yU",
      "b58g" => "8MpFel61KSinlDlU75c6Wq",
      "b58gp" => "8MpFel61KSinlDlU75c6Wq",
      "hex" => "43fb11a64f174561a5e24edf5e7f70ec",
      "dec" => "90361900206397293379905568386871947500"
    },
    {
      "data" => "rachel@t136.foobar.com",
      "b58f" => "pbSWqcABLnLtYhS6kQPcSP",
      "b58fp" => "pbSWqcABLnLtYhS6kQPcSP",
      "b58g" => "NAosOBYZiLiRuGo5JmlBol",
      "b58gp" => "NAosOBYZiLiRuGo5JmlBol",
      "hex" => "bbc704c819e4b6523842c3c190927f87",
      "dec" => "249598999269912237710431379880007597959"
    },
    {
      "data" => "ray@t137.foobar.com",
      "b58f" => "95eyDfggw9Cw5dwWwbpo58",
      "b58fp" => "95eyDfggw9Cw5dwWwbpo58",
      "b58g" => "84DWbEFFU8aU4CUsUANM47",
      "b58gp" => "84DWbEFFU8aU4CUsUANM47",
      "hex" => "41607156c023aa16e8dfc420f1717f7f",
      "dec" => "86900579009810301570872894709946220415"
    },
    {
      "data" => "raymond@t138.foobar.com",
      "b58f" => "6oJHke65wVydRwbmYnWtKD",
      "b58fp" => "6oJHke65wVydRwbmYnWtKD",
      "b58g" => "5MgfJD54UrWCnUAKuLsRhb",
      "b58gp" => "5MgfJD54UrWCnUAKuLsRhb",
      "hex" => "2baa60fa7ce0738ae7e32ec4466c3c6f",
      "dec" => "58041461241712368594104913391262645359"
    },
    {
      "data" => "rebecca@t139.foobar.com",
      "b58f" => "qRjaoGKpyGT6SybfEH7wrJ",
      "b58fp" => "qRjaoGKpyGT6SybfEH7wrJ",
      "b58g" => "OnI9MehNWep5oWAEcf6UPg",
      "b58gp" => "OnI9MehNWep5oWAEcf6UPg",
      "hex" => "c93df71ab56001a9057f14305d02bacc",
      "dec" => "267496569132375893769081822452341979852"
    },
    {
      "data" => "richard@t140.foobar.com",
      "b58f" => "fsXYuV8CYEAqix9P8F9KtS",
      "b58fp" => "fsXYuV8CYEAqix9P8F9KtS",
      "b58g" => "EQtuSr7aucYOHV8l7d8hRo",
      "b58gp" => "EQtuSr7aucYOHV8l7d8hRo",
      "hex" => "7523c647c4dc15b99cdd226a1994642c",
      "dec" => "155705427500110065839201778387867952172"
    },
    {
      "data" => "robert@t141.foobar.com",
      "b58f" => "nWzK2fnDPjs2GFX145e3U1",
      "b58fp" => "nWzK2fnDPjs2GFX145e3U1",
      "b58g" => "LsXh1ELblIQ1edt034D2q0",
      "b58gp" => "LsXh1ELblIQ1edt034D2q0",
      "hex" => "b1aede99a92ca602b0eb723719165bb8",
      "dec" => "236181329776512988222964337690786814904"
    },
    {
      "data" => "roman@t142.foobar.com",
      "b58f" => "8pF4mTEVEfEfSNFj4bt635",
      "b58fp" => "8pF4mTEVEfEfSNFj4bt635",
      "b58g" => "7Nd3KpcrcEcEokdI3AR524",
      "b58gp" => "7Nd3KpcrcEcEokdI3AR524",
      "hex" => "3bfe25cb8c5071f61bb0250c65873be4",
      "dec" => "79744061729275361834301801889884748772"
    },
    {
      "data" => "romy@t143.foobar.com",
      "b58f" => "bz8Lfj6eSJZZ8PsCqzgiwd",
      "b58fp" => "bz8Lfj6eSJZZ8PsCqzgiwd",
      "b58g" => "AX7iEI5Dogvv7lQaOXFHUC",
      "b58gp" => "AX7iEI5Dogvv7lQaOXFHUC",
      "hex" => "559bb70da020d2c3dcdb1f81f61f87a4",
      "dec" => "113792898415271610928003522597612390308"
    },
    {
      "data" => "roscoe@t144.foobar.com",
      "b58f" => "g4Y22G4JMh5Mp6CWrahtLB",
      "b58fp" => "g4Y22G4JMh5Mp6CWrahtLB",
      "b58g" => "F3u11e3gjG4jN5asP9GRiZ",
      "b58gp" => "F3u11e3gjG4jN5asP9GRiZ",
      "hex" => "7a06d557d0060c95b99cf0c514f61c17",
      "dec" => "162201296377386857034928268945927838743"
    },
    {
      "data" => "rose@t145.foobar.com",
      "b58f" => "9vEznJvECTphuW57y3shkk",
      "b58fp" => "9vEznJvECTphuW57y3shkk",
      "b58g" => "8TcXLgTcapNGSs46W2QGJJ",
      "b58gp" => "8TcXLgTcapNGSs46W2QGJJ",
      "hex" => "44ed73997d94678407f89adc3314b251",
      "dec" => "91620422706725354218226444709813072465"
    },
    {
      "data" => "ruby@t146.foobar.com",
      "b58f" => "qvdSAt8t8JfoeM1CvoyvZH",
      "b58fp" => "qvdSAt8t8JfoeM1CvoyvZH",
      "b58g" => "OTCoYR7R7gEMDj0aTMWTvf",
      "b58gp" => "OTCoYR7R7gEMDj0aTMWTvf",
      "hex" => "c66fd47be926c3d2112a0fc1fa9029a7",
      "dec" => "263767797804767543316400074206038993319"
    },
    {
      "data" => "rufus@t147.foobar.com",
      "b58f" => "fJ3hyQ76sX6QhjJQnxNoyH",
      "b58fp" => "fJ3hyQ76sX6QhjJQnxNoyH",
      "b58g" => "Eg2GWm65Qt5mGIgmLVkMWf",
      "b58gp" => "Eg2GWm65Qt5mGIgmLVkMWf",
      "hex" => "773e96909928390346ac28577b8005c1",
      "dec" => "158503107721329930763922762611428427201"
    },
    {
      "data" => "ruth@t148.foobar.com",
      "b58f" => "semaD6BpBCt2TEHes9FY13",
      "b58fp" => "semaD6BpBCt2TEHes9FY13",
      "b58g" => "QDK9b5ZNZaR1pcfDQ8du02",
      "b58gp" => "QDK9b5ZNZaR1pcfDQ8du02",
      "hex" => "d46ab3b85eebffc7a0a2d1e26191867a",
      "dec" => "282350363732084709434621454666838410874"
    },
    {
      "data" => "sadie@t149.foobar.com",
      "b58f" => "UdfW5bmddDGjpFt1sZzk4",
      "b58fp" => "1UdfW5bmddDGjpFt1sZzk4",
      "b58g" => "qCEs4AKCCbeINdR0QvXJ3",
      "b58gp" => "0qCEs4AKCCbeINdR0QvXJ3",
      "hex" => "74a3adee8c3573926fe9f037d12b1bd",
      "dec" => "9690019978471753031940629406309069245"
    },
    {
      "data" => "sally@t150.foobar.com",
      "b58f" => "eC6eFrxbYxSe8hzLN4aLRu",
      "b58fp" => "eC6eFrxbYxSe8hzLN4aLRu",
      "b58g" => "Da5DdPVAuVoD7GXik39inS",
      "b58gp" => "Da5DdPVAuVoD7GXik39inS",
      "hex" => "6e50ce156f18e283dbbb5ef320c6ca3e",
      "dec" => "146634643159576217270381648173047663166"
    },
    {
      "data" => "samuel@t151.foobar.com",
      "b58f" => "cyBSm8hBKFDmxS6RTgyxTj",
      "b58fp" => "cyBSm8hBKFDmxS6RTgyxTj",
      "b58g" => "BWZoK7GZhdbKVo5npFWVpI",
      "b58gp" => "BWZoK7GZhdbKVo5npFWVpI",
      "hex" => "5da26e2cdd29969686cadf888512418c",
      "dec" => "124461590318621834828071808136354349452"
    },
    {
      "data" => "sarah@t152.foobar.com",
      "b58f" => "gEvas2eVntU1vMTLAc22ho",
      "b58fp" => "gEvas2eVntU1vMTLAc22ho",
      "b58g" => "FcT9Q1DrLRq0TjpiYB11GM",
      "b58gp" => "FcT9Q1DrLRq0TjpiYB11GM",
      "hex" => "7ed950c0b12334f1a17c2edbe9b1f372",
      "dec" => "168611093746598361616080788269531526002"
    },
    {
      "data" => "scarlett@t153.foobar.com",
      "b58f" => "iHE5KNGu64ma8r9VHJAmaQ",
      "b58fp" => "iHE5KNGu64ma8r9VHJAmaQ",
      "b58g" => "Hfc4hkeS53K97P8rfgYK9m",
      "b58gp" => "Hfc4hkeS53K97P8rfgYK9m",
      "hex" => "8f7c521602255cd5db9cc2808c7ebfda",
      "dec" => "190725113108972501879638462069934571482"
    },
    {
      "data" => "sebastian@t154.foobar.com",
      "b58f" => "bmymJQ3P3Na95Zea5eqnuQ",
      "b58fp" => "bmymJQ3P3Na95Zea5eqnuQ",
      "b58g" => "AKWKgm2l2k984vD94DOLSm",
      "b58gp" => "AKWKgm2l2k984vD94DOLSm",
      "hex" => "53da33fb5b0492ab01551fe84bfe584c",
      "dec" => "111458898682635851406592604885200296012"
    },
    {
      "data" => "silas@t155.foobar.com",
      "b58f" => "qTaWjwsxrgCMA1DRaawEtL",
      "b58fp" => "qTaWjwsxrgCMA1DRaawEtL",
      "b58g" => "Op9sIUQVPFajY0bn99UcRi",
      "b58gp" => "Op9sIUQVPFajY0bn99UcRi",
      "hex" => "c980623b88c2a76409aaf0ad10e93142",
      "dec" => "267841433543588578020696435222863491394"
    },
    {
      "data" => "simon@t156.foobar.com",
      "b58f" => "4xbnT82V6YswZD8CADhToa",
      "b58fp" => "4xbnT82V6YswZD8CADhToa",
      "b58g" => "3VALp71r5uQUvb7aYbGpM9",
      "b58gp" => "3VALp71r5uQUvb7aYbGpM9",
      "hex" => "1ca5de39a4cd9a0720a2156a084c89c1",
      "dec" => "38079620125577263763554114897561029057"
    },
    {
      "data" => "sophia@t157.foobar.com",
      "b58f" => "uSsimYXiJfpyVTEniSgdeB",
      "b58fp" => "uSsimYXiJfpyVTEniSgdeB",
      "b58g" => "SoQHKutHgENWrpcLHoFCDZ",
      "b58gp" => "SoQHKutHgENWrpcLHoFCDZ",
      "hex" => "e9cb474d5d2ff01535467f245707651d",
      "dec" => "310765605460658400448216219509680727325"
    },
    {
      "data" => "stella@t158.foobar.com",
      "b58f" => "uhsAzfPV38gccUsiNNp1Ci",
      "b58fp" => "uhsAzfPV38gccUsiNNp1Ci",
      "b58g" => "SGQYXElr27FBBqQHkkN0aH",
      "b58gp" => "SGQYXElr27FBBqQHkkN0aH",
      "hex" => "e50c2c586ae05315b5a15ed78c57deb1",
      "dec" => "304456418028225617536818348891468979889"
    },
    {
      "data" => "stellan@t159.foobar.com",
      "b58f" => "qwmeRueNtTA6BG87X5qfVi",
      "b58fp" => "qwmeRueNtTA6BG87X5qfVi",
      "b58g" => "OUKDnSDkRpY5Ze76t4OErH",
      "b58gp" => "OUKDnSDkRpY5Ze76t4OErH",
      "hex" => "c6981d132516862e25774f55c9826a6b",
      "dec" => "263976961994602405683735077164433959531"
    },
    {
      "data" => "stephen@t160.foobar.com",
      "b58f" => "p7LF1KEXBaqcEqqxxFdhLF",
      "b58fp" => "p7LF1KEXBaqcEqqxxFdhLF",
      "b58g" => "N6id0hctZ9OBcOOVVdCGid",
      "b58gp" => "N6id0hctZ9OBcOOVVdCGid",
      "hex" => "bb342eaa9d2aa25a8cf65fa9c7a03fcf",
      "dec" => "248836581156693162791581991481471156175"
    },
    {
      "data" => "sullivan@t161.foobar.com",
      "b58f" => "sjbpK5vVjj9HEmFuimqw9S",
      "b58fp" => "sjbpK5vVjj9HEmFuimqw9S",
      "b58g" => "QIANh4TrII8fcKdSHKOU8o",
      "b58gp" => "QIANh4TrII8fcKdSHKOU8o",
      "hex" => "d51768739c130d07703a2a9dad9e915a",
      "dec" => "283247104460073543528770836461321621850"
    },
    {
      "data" => "susannah@t162.foobar.com",
      "b58f" => "wzzfj74UJdELhrLBC6qT32",
      "b58fp" => "wzzfj74UJdELhrLBC6qT32",
      "b58g" => "UXXEI63qgCciGPiZa5Op21",
      "b58gp" => "UXXEI63qgCciGPiZa5Op21",
      "hex" => "f7a231791c13bd78321a8d139b3a7ff1",
      "dec" => "329161470483324550450953150782053711857"
    },
    {
      "data" => "talullah@t163.foobar.com",
      "b58f" => "6Bv5sQYYGgEH8ocfpyVYEM",
      "b58fp" => "6Bv5sQYYGgEH8ocfpyVYEM",
      "b58g" => "5ZT4QmuueFcf7MBENWrucj",
      "b58gp" => "5ZT4QmuueFcf7MBENWrucj",
      "hex" => "2d72a50182199590c72e1d7b46d8e151",
      "dec" => "60410528369270930395762843516837355857"
    },
    {
      "data" => "theo@t164.foobar.com",
      "b58f" => "btE6gi4ouzPVVB8vHuuYTz",
      "b58fp" => "btE6gi4ouzPVVB8vHuuYTz",
      "b58g" => "ARc5FH3MSXlrrZ7TfSSupX",
      "b58gp" => "ARc5FH3MSXlrrZ7TfSSupX",
      "hex" => "54d7f1518dd60dc9c4ec65211730ec0f",
      "dec" => "112776389992609726594994215312275074063"
    },
    {
      "data" => "theodore@t165.foobar.com",
      "b58f" => "inuCfNZXhBwqAd3eRdmucu",
      "b58fp" => "inuCfNZXhBwqAd3eRdmucu",
      "b58g" => "HLSaEkvtGZUOYC2DnCKSBS",
      "b58gp" => "HLSaEkvtGZUOYC2DnCKSBS",
      "hex" => "8cab9e02c40c2205b9da1b06f13ae44a",
      "dec" => "186983007012545109424372555279545066570"
    },
    {
      "data" => "thomas@t166.foobar.com",
      "b58f" => "xo71nBSArfgxTzjbiu2no1",
      "b58fp" => "xo71nBSArfgxTzjbiu2no1",
      "b58g" => "VM60LZoYPEFVpXIAHS1LM0",
      "b58gp" => "VM60LZoYPEFVpXIAHS1LM0",
      "hex" => "fe215ced0236e539c7e79636d7e04ef8",
      "dec" => "337797141485143667365331029065650425592"
    },
    {
      "data" => "timothy@t167.foobar.com",
      "b58f" => "mCpPnySkinUWyL42qxedyd",
      "b58fp" => "mCpPnySkinUWyL42qxedyd",
      "b58g" => "KaNlLWoJHLqsWi31OVDCWC",
      "b58gp" => "KaNlLWoJHLqsWi31OVDCWC",
      "hex" => "a70c39fd05ea5713bf8e257fc45aceb4",
      "dec" => "222044559002286617861641427951453654708"
    },
    {
      "data" => "victor@t168.foobar.com",
      "b58f" => "ktKMp7zpvznh9eJe5wpGDP",
      "b58fp" => "ktKMp7zpvznh9eJe5wpGDP",
      "b58g" => "JRhjN6XNTXLG8DgD4UNebl",
      "b58gp" => "JRhjN6XNTXLG8DgD4UNebl",
      "hex" => "9dbdb2ca2f9a0709779551c1ad188d69",
      "dec" => "209673765732225155615448460005033413993"
    },
    {
      "data" => "victoria@t169.foobar.com",
      "b58f" => "m2cfi3nqGKGsnaKKZi6Gng",
      "b58fp" => "m2cfi3nqGKGsnaKKZi6Gng",
      "b58g" => "K1BEH2LOeheQL9hhvH5eLF",
      "b58gp" => "K1BEH2LOeheQL9hhvH5eLF",
      "hex" => "a22172a57eab4be79fa340d5b3523729",
      "dec" => "215508606420031847869033068723988215593"
    },
    {
      "data" => "vincent@t170.foobar.com",
      "b58f" => "4zxVvtDST2izRT5agTNDSq",
      "b58fp" => "4zxVvtDST2izRT5agTNDSq",
      "b58g" => "3XVrTRbop1HXnp49FpkboO",
      "b58gp" => "3XVrTRbop1HXnp49FpkboO",
      "hex" => "1cfaa2242135c8e1d1630a1ac6daaea0",
      "dec" => "38519746709459020464009922007057215136"
    },
    {
      "data" => "violet@t171.foobar.com",
      "b58f" => "mR6C6C3vTeQRW28PfarMW8",
      "b58fp" => "mR6C6C3vTeQRW28PfarMW8",
      "b58g" => "Kn5a5a2TpDmns17lE9Pjs7",
      "b58gp" => "Kn5a5a2TpDmns17lE9Pjs7",
      "hex" => "a8d1aece1f466995963533ee4df2ae0f",
      "dec" => "224399038805251317671013674797908536847"
    },
    {
      "data" => "virginia@t172.foobar.com",
      "b58f" => "sgC4TvD2PvgogA9hg9SXwf",
      "b58fp" => "sgC4TvD2PvgogA9hg9SXwf",
      "b58g" => "QFa3pTb1lTFMFY8GF8otUE",
      "b58gp" => "QFa3pTb1lTFMFY8GF8otUE",
      "hex" => "d4bbfd22b37099f79187cc22ce8be246",
      "dec" => "282772428817869370718468882166568444486"
    },
    {
      "data" => "walter@t173.foobar.com",
      "b58f" => "tmSRjaqamj5apt2SZ6Q1f1",
      "b58fp" => "tmSRjaqamj5apt2SZ6Q1f1",
      "b58g" => "RKonI9O9KI49NR1ov5m0E0",
      "b58gp" => "RKonI9O9KI49NR1ov5m0E0",
      "hex" => "dd90f4efe1ba9b65ff68223628b1949c",
      "dec" => "294512045729429276267590835002181522588"
    },
    {
      "data" => "william@t174.foobar.com",
      "b58f" => "3CxxK9U1RkWKczEon2nEWh",
      "b58fp" => "3CxxK9U1RkWKczEon2nEWh",
      "b58g" => "2aVVh8q0nJshBXcML1LcsG",
      "b58gp" => "2aVVh8q0nJshBXcML1LcsG",
      "hex" => "154c7ea8a83c4743276c0bce2fddfb9c",
      "dec" => "28310971418739596463586043480707562396"
    },
    {
      "data" => "zachary@t175.foobar.com",
      "b58f" => "6PWcERtfib8AGNLQk3SHVT",
      "b58fp" => "6PWcERtfib8AGNLQk3SHVT",
      "b58g" => "5lsBcnREHA7YekimJ2ofrp",
      "b58gp" => "5lsBcnREHA7YekimJ2ofrp",
      "hex" => "2f2f0d9c7f5637ee5cd17fa959b1efc9",
      "dec" => "62718029824569210616939637565157404617"
    }
  ]

  def test_flickr_gmp_transcoding
    MULTI_EXAMPLES.each do |test|
      assert_equal test['b58f'],     Base58GMP.encode(test['dec'].to_i)
      assert_equal test['b58f'],     Base58GMP.encode(GMP::Z(test['dec'].to_i))
      assert_equal test['b58f'],     Base58GMP.encode(test['hex'].to_i(16))
      assert_equal test['dec'].to_i, Base58GMP.decode(test['b58f']).to_i
      assert_equal test['hex'] ,     Base58GMP.decode(test['b58f']).to_s(16)
      assert_equal test['b58g'],     Base58GMP.encode(test['dec'].to_i,'gmp')
      assert_equal test['b58g'],     Base58GMP.encode(test['hex'].to_i(16),'gmp')
      assert_equal test['dec'].to_i, Base58GMP.decode(test['b58g'],:gmp).to_i
      assert_equal test['hex'] ,     Base58GMP.decode(test['b58g'],'gmp').to_s(16)
    end
  end

  def test_md5
    MULTI_EXAMPLES.each do |test|
      assert_equal test['b58f'],     Base58GMP.md5(test['data'])
      assert_equal test['b58f'],     Base58GMP.md5_base58(test['data'])
      assert_equal test['b58g'],     Base58GMP.md5_base58(test['data'],'GMP')
      assert_equal test['b58fp'],    Base58GMP.md5_base58(test['data'], :flickr, pad: true)
      assert_equal test['b58gp'],    Base58GMP.md5_base58(test['data'], :gmp, pad: true)
    end
  end
end
