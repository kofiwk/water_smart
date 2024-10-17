import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 920,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Statistics Overview',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: -.5,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'An easy way to manage sales with care and precision.', //  h.t.t.p.s.:././.g.i.t.h.u.b..c.o.m./.j.u.s.t.k.a.w.a.l./.u.i
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(.45),
                  letterSpacing: -.2,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 33,
                padding: const EdgeInsets.symmetric(horizontal: 1.5),
                margin: const EdgeInsets.symmetric(vertical: 1.2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.grey, width: .4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.calendar,
                      size: 14,
                      color: Colors.black.withOpacity(.65),
                    ),
                    Text(
                      'January 2024 - September 2024',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(.75),
                        letterSpacing: -.5,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 12,
                      color: Colors.black.withOpacity(.65),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
            ],
          ),
        ],
      ),
    );
  }
}
